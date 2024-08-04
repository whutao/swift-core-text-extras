#if canImport(CoreText)
import CoreText

extension CTFramesetter {
    
    /// Suggests a frame size for the given constraints.
    ///
    /// This method calculates and returns the size of the frame that best fits within the given constraints.
    ///
    /// - Parameters:
    ///   - constraints: The `CGSize` specifying the width and height constraints for the frame.
    ///
    /// - Complexity: *O(n)* where *n* is the number of characters in the attributed string.
    ///
    /// - Returns: A `CGSize` value representing the suggested frame size that fits within the given constraints,
    ///   computed using `CTFramesetterSuggestFrameSizeWithConstraints`.
    @inlinable
    public func frameSize(constrainedBy constraints: CGSize) -> CGSize {
        return CTFramesetterSuggestFrameSizeWithConstraints(
            self,
            CFRange(),
            nil,
            constraints,
            nil
        )
    }
}
#endif
