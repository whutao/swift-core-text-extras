import CoreText
import Foundation

extension CTLine {
    
    /// The number of glyphs in this line, obtained via `CTLineGetGlyphCount`.
    @inlinable
    public var glyphCount: CFIndex {
        return CTLineGetGlyphCount(self)
    }
    
    /// Returns an array of glyph runs (`CTRun` instances) that make up the line.
    ///
    /// - Returns: An array of `CTRun` objects representing the glyph runs in the line,
    ///   computed using `CTLineGetGlyphRuns`.
    @inlinable
    public var runs: [CTRun] {
        return Array(CTLineGetGlyphRuns(self))
    }
    
    /// Returns the string range of the line.
    ///
    /// This property provides the range of characters that the `CTLine` represents.
    ///
    /// - Returns: An `NSRange` value representing the range of characters that the line covers,
    ///   computed using `CTLineGetStringRange`.
    @inlinable
    public var stringRange: NSRange {
        return NSRange(CTLineGetStringRange(self))
    }
    
    /// Returns the trailing whitespace width for a line.
    /// - Returns: The width of the line's trailing whitespace.
    ///   If the line is invalid, this function will always return zero.
    @inlinable
    public var trailingWhitespaceWidth: CGFloat {
        return CTLineGetTrailingWhitespaceWidth(self)
    }
}
