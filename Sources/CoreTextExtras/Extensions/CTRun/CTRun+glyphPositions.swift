import CoreText
import Foundation

extension CTRun {
    
    /// Returns the positions of glyphs in this run.
    ///
    /// - Parameter range: A `NSRange` specifying which glyphs to include. Defaults to the full run.
    /// - Returns: An array containing the position of each glyph.
    @inlinable
    public func glyphPositions(in range: NSRange = NSRange()) -> [CGPoint] {
        let glyphCount = glyphCount
        return Array(unsafeUninitializedCapacity: glyphCount) { buffer, initializedCount in
            CTRunGetPositions(
                self,
                CFRange(range),
                buffer.baseAddress!
            )
            initializedCount = glyphCount
        }
    }
}
