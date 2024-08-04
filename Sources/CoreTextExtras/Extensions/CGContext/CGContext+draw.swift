#if canImport(CoreText)
import CoreText

extension CGContext {
    
    /// Draws the entire `CTRun` in the graphics context.
    ///
    /// - Parameters:
    ///   - run: The `CTRun` object to be drawn.
    ///
    /// - Note: This method calls the `CTRunDraw` function to render
    ///   the line in the provided graphics context.
    @inlinable
    public func draw(_ run: CTRun) {
        run.draw(in: self)
    }
    
    /// Draws the entire `CTLine` in the graphics context.
    ///
    /// - Parameters:
    ///   - line: The `CTLine` object to be drawn.
    ///
    /// - Note: This method calls the `CTLineDraw` function to render
    ///   the line in the provided graphics context.
    @inlinable
    public func draw(_ line: CTLine) {
        line.draw(in: self)
    }
    
    /// Draws the entire `CTFrame` in the graphics context.
    ///
    /// - Parameters:
    ///   - frame: The `CTFrame` object to be drawn.
    ///
    /// - Note: Note: This method calls the `CTFrameDraw` function to render
    ///   the line in the provided graphics context.
    @inlinable
    public func draw(_ frame: CTFrame) {
        frame.draw(in: self)
    }
}
#endif
