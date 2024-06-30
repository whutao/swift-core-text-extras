import CoreText
import Foundation

extension CTRun {
    
    /// Returns the string indices for glyphs in this run.
    ///
    /// - Parameter range: A `NSRange` specifying which glyphs to retrieve indices for. Defaults to the full run.
    /// - Returns: An array of string indices, populated via `CTRunGetStringIndices`.
    @inlinable
    public func stringIndices(in range: NSRange = NSRange()) -> [CFIndex] {
        let glyphCount = glyphCount
        return Array(unsafeUninitializedCapacity: glyphCount) { buffer, initializedCount in
            CTRunGetStringIndices(
                self,
                CFRange(range),
                buffer.baseAddress!
            )
            initializedCount = glyphCount
        }
    }
}
