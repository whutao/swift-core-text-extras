#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension CTLine {
    
    /// Returns the string range of the line.
    ///
    /// This property provides the range of characters that the `CTLine` represents.
    ///
    /// - Complexity: *O(1)* as it retrieves the string range from the line, which involves
    ///   a simple lookup operation that completes in constant time.
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
    
    /// Returns the typographic bounds of the line.
    ///
    /// This property calculates and returns the ascent, descent, and leading of the line.
    ///
    /// - Complexity: *O(1)* as it retrieves the typographic bounds from the line,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: A tuple containing the ascent, descent, and leading values of the line,
    ///   computed using `CTLineGetTypographicBounds`.
    @inlinable
    public var typographicBounds: (ascent: CGFloat, descent: CGFloat, leading: CGFloat) {
        var ascent: CGFloat = 0
        var descent: CGFloat = 0
        var leading: CGFloat = 0
        CTLineGetTypographicBounds(self, &ascent, &descent, &leading)
        return (ascent: ascent, descent: descent, leading: leading)
    }
    
    /// Returns the typographic height of the line.
    ///
    /// This property calculates and returns the total height of the line, which
    /// is the sum of its ascent, descent, and leading.
    ///
    /// - Complexity: *O(1)* as it retrieves the typographic bounds and computes
    ///   the height, which involves simple arithmetic operations that complete in constant time.
    ///
    /// - Returns: A `CGFloat` value representing the total typographic height of the line.
    @inlinable
    public var typographicHeight: CGFloat {
        let (ascent, descent, leading) = typographicBounds
        return ascent + descent + leading
    }
}
#endif