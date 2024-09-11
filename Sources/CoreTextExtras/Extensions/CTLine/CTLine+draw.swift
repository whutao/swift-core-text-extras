#if canImport(CoreText)
import CoreText

extension CTLine {
    
    /// Draws the line in the specified graphics context.
    ///
    /// This method draws the text line represented by the `CTLine`
    /// instance in the given graphics context.
    ///
    /// - Parameters:
    ///   - context: The `CGContext` in which to draw the line.
    ///
    /// - Note: This method internally uses `CTLineDraw` to render
    ///   the line in the provided graphics context.
    @inlinable
    public func draw(in context: CGContext) {
        CTLineDraw(self, context)
    }
}
#endif
