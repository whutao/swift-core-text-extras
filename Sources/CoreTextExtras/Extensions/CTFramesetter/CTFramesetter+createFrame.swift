import CoreText
import Foundation

extension CTFramesetter {
    
    /// Creates a `CTFrame` for this framesetter using a rectangular bounds.
    ///
    /// - Parameters:
    ///   - rect: The `CGRect` defining the frame’s bounding box, converted to a `CGPath`.
    ///   - range: A `NSRange` specifying the string range to include. Defaults to the full string.
    ///   - attributes: A `[CFString: Any]` dictionary passed as frame attributes to `CTFramesetterCreateFrame`.
    /// - Returns: A `CTFrame` instance laid out within the specified rectangle.
    @inlinable
    public func createFrame(
        with rect: CGRect,
        range: NSRange = NSRange(),
        attributes: [CFString: Any] = [:]
    ) -> CTFrame {
        return createFrame(
            with: CGPath(rect: rect, transform: nil),
            range: range,
            attributes: attributes
        )
    }
    
    /// Creates a `CTFrame` for this framesetter using a custom path.
    ///
    /// - Parameters:
    ///   - path: The `CGPath` defining the frame shape.
    ///   - range: A `NSRange` specifying the string range to include. Defaults to the full string.
    ///   - attributes: A dictionary passed as frame attributes to `CTFramesetterCreateFrame`.
    /// - Returns: A `CTFrame` instance laid out within the specified path.
    @inlinable
    public func createFrame(
        with path: CGPath,
        range: NSRange = NSRange(),
        attributes: [CFString: Any] = [:]
    ) -> CTFrame {
        return CTFramesetterCreateFrame(
            self,
            CFRange(range),
            path,
            attributes as CFDictionary
        )
    }
}
