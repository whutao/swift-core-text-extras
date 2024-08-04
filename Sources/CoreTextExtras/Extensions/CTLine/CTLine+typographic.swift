#if canImport(CoreText)
import CoreText

extension CTLine {
    
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
