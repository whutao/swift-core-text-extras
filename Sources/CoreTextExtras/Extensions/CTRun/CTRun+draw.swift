import CoreText
import Foundation

extension CTRun {
    
    /// Draws the specified range of the `CTRun` in the provided graphics context.
    ///
    /// - Parameters:
    ///   - range: A `NSRange` specifying the range of glyphs to draw.
    ///            The default value is an empty `NSRange`, which means the
    ///            entire range of the `CTRun`.
    ///   - context: The `CGContext` in which to draw the `CTRun`.
    ///
    /// - Note: This method internally uses `CTRunDraw` to render the glyphs
    ///   in the provided graphics context.
    @inlinable
    public func draw(range: NSRange = NSRange(), in context: CGContext) {
        CTRunDraw(self, context, range.cfRange)
    }
}
