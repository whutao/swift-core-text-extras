#if canImport(CoreText)
import CoreText

extension CTFrame {
    
    /// Draws the frame in the specified graphics context.
    ///
    /// - Parameters:
    ///   - context: The `CGContext` in which to draw the frame.
    ///
    /// - Complexity: *O(n)* where *n* is the number of lines in the frame.
    ///
    /// - Note: This method internally uses `CTFrameDraw` to render the frame
    ///   in the provided graphics context.
    @inlinable
    public func draw(in context: CGContext) {
        CTFrameDraw(self, context)
    }
}
#endif