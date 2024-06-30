import CoreText
import Foundation

extension CTFrame {
    
    /// A dictionary of attributes for this text frame.
    ///
    /// - Returns: A dictionary created via `CTFrameGetFrameAttributes`.
    @inlinable
    public var attributes: [CFString: Any]  {
        return Dictionary(CTFrameGetFrameAttributes(self))
    }
    
    /// Returns an array of lines (CTLine) in the frame.
    ///
    /// - Returns: An array of `CTLine` objects contained in the frame,
    ///   computed using `CTFrameGetLines`.
    @inlinable
    public var lines: [CTLine] {
        return Array(CTFrameGetLines(self))
    }
    
    /// Returns the path associated with the frame.
    ///
    /// - Returns: The `CGPath` associated with the frame, computed using `CTFrameGetPath`.
    @inlinable
    public var path: CGPath {
        return CTFrameGetPath(self)
    }
    
    /// Returns the full string range within the frame.
    ///
    /// - Returns: An `NSRange` representing the full string range within the frame,
    ///   computed using `CTFrameGetStringRange`.
    @inlinable
    public var stringRange: NSRange {
        return NSRange(CTFrameGetStringRange(self))
    }
    
    /// Returns the visible string range within the frame.
    ///
    /// - Returns: An `NSRange` representing the visible string range within the frame,
    ///   computed using `CTFrameGetVisibleStringRange`.
    @inlinable
    public var visibleStringRange: NSRange {
        return NSRange(CTFrameGetVisibleStringRange(self))
    }
}
