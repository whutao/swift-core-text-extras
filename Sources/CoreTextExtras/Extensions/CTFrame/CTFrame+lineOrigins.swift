import CoreText
import Foundation

extension CTFrame {
    
    /// Returns the origins of lines within this text frame.
    ///
    /// - Parameter range: A `NSRange` specifying the lines to include. Defaults to the full range of lines.
    /// - Returns: An array of line origin points, populated via `CTFrameGetLineOrigins`.
    @inlinable
    public func lineOrigins(in range: NSRange = NSRange()) -> [CGPoint] {
        let lineCount = lines.count
        return Array(unsafeUninitializedCapacity: lineCount) { buffer, initializedCount in
            CTFrameGetLineOrigins(
                self,
                CFRange(range),
                buffer.baseAddress!
            )
            initializedCount = lineCount
        }
    }
}
