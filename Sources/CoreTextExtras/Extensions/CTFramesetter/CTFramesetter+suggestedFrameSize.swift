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
    ///   - attributes: A dictionary of frame attributes passed to `CTFramesetterSuggestFrameSizeWithConstraints`.
    ///
    /// - Returns: A tuple containing:
    ///   - size: A `CGSize` representing the suggested frame size that fits within the given constraints.
    ///   - fitRange: An `NSRange` indicating the portion of the string that fits within the returned size.
    @inlinable
    public func suggestedFrameSize(
        for range: NSRange = NSRange(),
        constrainedBy constraints: CGSize,
        attributes: [CFString: Any] = [:]
    ) -> (size: CGSize, fitRange: NSRange) {
        var fitRange = CFRange()
        let size = CTFramesetterSuggestFrameSizeWithConstraints(
            self,
            CFRange(range),
            attributes as CFDictionary,
            constraints,
            &fitRange
        )
        return (size: size, fitRange: NSRange(fitRange))
    }
}
