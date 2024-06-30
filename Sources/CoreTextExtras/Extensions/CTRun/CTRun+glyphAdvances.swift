import CoreText
import Foundation

extension CTRun {
    
    /// Returns the advance distances for glyphs in this run.
    ///
    /// - Parameter range: A `NSRange` specifying the range of glyphs to measure. Defaults to the entire run.
    /// - Returns: An array containing the advance of each glyph, obtained via `CTRunGetAdvances`.
    @inlinable
    public func glyphAdvances(in range: NSRange = NSRange()) -> [CGSize] {
        let glyphCount = glyphCount
        return Array<CGSize>(unsafeUninitializedCapacity: glyphCount) { buffer, initializedCount in
            CTRunGetAdvances(
                self,
                CFRange(range),
                buffer.baseAddress!
            )
            initializedCount = glyphCount
        }
    }
}
