#if canImport(CoreText)
import CoreText

extension CTFrame {
    
    /// Returns the path associated with the frame.
    ///
    /// - Complexity: *O(1)* as the internal function `CTFrameGetPath`
    ///   directly retrieves the path associated with the frame, which involves a simple
    ///   lookup operation that completes in constant time.
    ///
    /// - Returns: The `CGPath` associated with the frame, computed using `CTFrameGetPath`.
    @inlinable
    public var path: CGPath {
        return CTFrameGetPath(self)
    }
}
#endif
