#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension CTFrame {
    
    /// Returns the visible string range within the frame.
    ///
    /// - Returns: An `NSRange` representing the visible string range within the frame,
    ///   computed using `CTFrameGetVisibleStringRange`.
    @inlinable
    public var visibleStringRange: NSRange {
        return NSRange(CTFrameGetVisibleStringRange(self))
    }
    
    /// Returns the full string range within the frame.
    ///
    /// - Returns: An `NSRange` representing the full string range within the frame,
    ///   computed using `CTFrameGetStringRange`.
    @inlinable
    public var stringRange: NSRange {
        return NSRange(CTFrameGetStringRange(self))
    }
}
#endif
