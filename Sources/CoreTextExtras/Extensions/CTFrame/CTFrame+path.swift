#if canImport(CoreText)
import CoreText

extension CTFrame {
    
    /// Returns the path associated with the frame.
    ///
    /// - Returns: The `CGPath` associated with the frame, computed using `CTFrameGetPath`.
    @inlinable
    public var path: CGPath {
        return CTFrameGetPath(self)
    }
}
#endif
