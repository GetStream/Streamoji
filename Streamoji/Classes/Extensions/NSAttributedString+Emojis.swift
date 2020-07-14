//
//  NSAttributedString+Emojis.swift
//  Streamoji
//
//  Created by Matheus Cardoso on 30/06/20.
//

import Foundation

extension NSAttributedString {
    internal func insertingEmojis(
        _ emojis: [String: EmojiSource]
    ) -> NSAttributedString {
        let attributedString = NSMutableAttributedString(attributedString: self)

        var ranges = attributedString.getMatches()
        let notMatched = attributedString.insertEmojis(emojis, in: string.filterOutRangesInsideCode(ranges: ranges))
        ranges = attributedString.getMatches(excludingRanges: notMatched)
        attributedString.insertEmojis(emojis, in: string.filterOutRangesInsideCode(ranges: ranges))

        return attributedString
    }
    
    private func getMatches(
        excludingRanges: [NSRange] = []
    ) -> [NSRange] {
        var ranges = [NSRange]()
        var lastMatchIndex = 0
        for range in excludingRanges {
            ranges.append(NSRange(location: lastMatchIndex, length: range.location - lastMatchIndex + 1))
            lastMatchIndex = range.location + range.length - 1
        }
        ranges.append(NSRange(location: lastMatchIndex, length: length - lastMatchIndex))

        let regex = try? NSRegularExpression(pattern: ":(\\w|-|\\+)+:", options: [])
        let matchRanges = ranges.map { range in regex?.matches(in: string, options: [], range: range).map { $0.range(at: 0) } ?? [] }
        return matchRanges.reduce(into: [NSRange]()) { $0.append(contentsOf: $1) }
    }
}

extension NSMutableAttributedString {
    @discardableResult
    internal func insertEmojis(
        _ emojis: [String: EmojiSource],
        in ranges: [NSRange]
    ) -> [NSRange] {
        var offset = 0
        var notMatched = [NSRange]()

        for range in ranges {
            let emojiAttachment = NSTextAttachment()
            emojiAttachment.bounds = CGRect(x: 0, y: 0, width: 22.0, height: 22.0)
            let transformedRange = NSRange(location: range.location - offset, length: range.length)
            let replacementString = self.attributedSubstring(from: transformedRange)

            if var emoji = emojis[replacementString.string.replacingOccurrences(of: ":", with: "")] {
                if case .alias(let alias) = emoji {
                    emoji = emojis[alias] ?? emoji
                }
                
                emojiAttachment.contents = try! JSONEncoder().encode(emoji)
                self.replaceCharacters(
                    in: transformedRange,
                    with: NSAttributedString(attachment: emojiAttachment)
                )

                offset += replacementString.length - 1
            } else {
                notMatched.append(transformedRange)
            }
        }

        return notMatched
    }
}
