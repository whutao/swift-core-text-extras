#if canImport(CoreText)
import CoreText

extension CTFrame {
    
    /// Returns an array of lines (CTLine) in the frame.
    ///
    /// - Returns: An array of `CTLine` objects contained in the frame,
    ///   computed using `CTFrameGetLines`.
    @inlinable
    public var lines: [CTLine] {
        return CTFrameGetLines(self) as? [CTLine] ?? []
    }
    
    /// Returns an array of origins for each line in the frame.
    ///
    /// - Returns: An array of `CGPoint` values representing the origins of each line,
    ///   computed using `CTFrameGetLineOrigins`.
    @inlinable
    public var lineOrigins: [CGPoint] {
        let lineCount = lines.count
        return Array(unsafeUninitializedCapacity: lineCount) { (buffer, count) in
            CTFrameGetLineOrigins(self, CFRange(), buffer.baseAddress!)
            count = lineCount
        }
    }
}
#endif
