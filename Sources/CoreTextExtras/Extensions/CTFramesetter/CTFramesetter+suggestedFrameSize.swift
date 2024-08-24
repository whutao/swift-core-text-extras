#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension CTFramesetter {
    
    /// Suggests a frame size for the given constraints.
    ///
    /// This method calculates and returns the size of the frame that best fits within the given constraints.
    ///
    /// - Parameters:
    ///   - range: The string range to which the frame size applies.
    ///     The string range is a range over the string used to create the framesetter.
    ///     If the length portion of the range is set to 0, then the framesetter continues
    ///     to add lines until it runs out of text or space.
    ///   - constraints: The `CGSize` specifying the width and height constraints for the frame.
    ///
    /// - Complexity: *O(n)* where *n* is the number of characters in the attributed string.
    ///
    /// - Returns: A `CGSize` value representing the suggested frame size that fits within the given constraints,
    ///   computed using `CTFramesetterSuggestFrameSizeWithConstraints`.
    @inlinable
    public func suggestedFrameSize(
        forRange range: NSRange = NSRange(),
        constrainedBy constraints: CGSize
    ) -> CGSize {
        return CTFramesetterSuggestFrameSizeWithConstraints(
            self,
            range.cfRange,
            nil,
            constraints,
            nil
        )
    }
}
#endif
