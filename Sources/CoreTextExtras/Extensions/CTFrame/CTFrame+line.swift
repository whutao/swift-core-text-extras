import CoreText

extension CTFrame {
    
    /// Returns an array of lines (CTLine) in the frame.
    ///
    /// - Complexity: *O(1)* for retrieving the lines from the frame.
    ///
    /// - Returns: An array of `CTLine` objects contained in the frame,
    ///   computed using `CTFrameGetLines`.
    @inlinable
    public var lines: [CTLine] {
        return CTFrameGetLines(self) as? [CTLine] ?? []
    }
    
    /// Returns an array of origins for each line in the frame.
    ///
    /// - Complexity: *O(n)* where *n* is the number of lines in the frame.
    ///
    /// - Returns: An array of `CGPoint` values representing the origins of each line,
    ///   computed using `CTFrameGetLineOrigins`.
    @inlinable
    public func lineOrigins() -> [CGPoint] {
        let lineCount = lines.count
        return Array(unsafeUninitializedCapacity: lineCount) { (buffer, count) in
            CTFrameGetLineOrigins(self, CFRange(), buffer.baseAddress!)
            count = lineCount
        }
    }
}
