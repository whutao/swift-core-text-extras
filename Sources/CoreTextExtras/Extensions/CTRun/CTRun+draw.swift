import CoreText

extension CTRun {
    
    /// Draws the specified range of the `CTRun` in the provided graphics context.
    ///
    /// - Parameters:
    ///   - range: A `CFRange` specifying the range of glyphs to draw.
    ///            The default value is an empty `CFRange`, which means the
    ///            entire range of the `CTRun`.
    ///   - context: The `CGContext` in which to draw the `CTRun`.
    ///
    /// - Complexity: *O(n)* where *n* is the number of glyphs in the specified range.
    ///
    /// - Note: This method internally uses `CTRunDraw` to render the glyphs
    ///   in the provided graphics context.
    @inlinable
    public func draw(range: CFRange = CFRange(), in context: CGContext) {
        return CTRunDraw(self, context, range)
    }
}
