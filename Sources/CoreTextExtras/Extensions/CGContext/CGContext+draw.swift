import CoreGraphics
import CoreText
import Foundation

extension CGContext {
    
    /// Draws the entire `CTRun` in the graphics context.
    ///
    /// This method calls the `CTRunDraw` function to render the line in the provided graphics context.
    ///
    /// - Parameters:
    ///   - run: The `CTRun` object to be drawn.
    ///   - range: A `NSRange` specifying the range of glyphs to draw.
    ///            The default value is an empty `NSRange`, which means the
    ///            entire range of the `CTRun`.
    @inlinable
    public func draw(_ run: CTRun, range: NSRange = NSRange()) {
        CTRunDraw(run, self, CFRange(range))
    }
    
    /// Draws the entire `CTLine` in the graphics context.
    ///
    /// This method calls the `CTLineDraw` function to render the line in the provided graphics context.
    ///
    /// - Parameters:
    ///   - line: The `CTLine` object to be drawn.
    @inlinable
    public func draw(_ line: CTLine) {
        CTLineDraw(line, self)
    }
    
    /// Draws the entire `CTFrame` in the graphics context.
    ///
    /// This method calls the `CTFrameDraw` function to render the line in the provided graphics context.
    ///
    /// - Parameters:
    ///   - frame: The `CTFrame` object to be drawn.
    @inlinable
    public func draw(_ frame: CTFrame) {
        CTFrameDraw(frame, self)
    }
}
