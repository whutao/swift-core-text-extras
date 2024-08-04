#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension CTFrame {
    
    /// Returns the visible string range within the frame.
    ///
    /// - Complexity: *O(1)* as the internal function `CTFrameGetVisibleStringRange`
    ///   directly retrieves the visible string range, which involves a simple lookup operation that
    ///   completes in constant time.
    ///
    /// - Returns: An `NSRange` representing the visible string range within the frame,
    ///   computed using `CTFrameGetVisibleStringRange`.
    @inlinable
    public var visibleStringRange: NSRange {
        return NSRange(CTFrameGetVisibleStringRange(self))
    }
    
    /// Returns the full string range within the frame.
    ///
    /// - Complexity: *O(1)* as the internal function `CTFrameGetStringRange`
    ///   directly retrieves the string range, which involves a simple lookup operation that
    ///   completes in constant time.
    ///
    /// - Returns: An `NSRange` representing the full string range within the frame,
    ///   computed using `CTFrameGetStringRange`.
    @inlinable
    public var stringRange: NSRange {
        return NSRange(CTFrameGetStringRange(self))
    }
}
#endif
