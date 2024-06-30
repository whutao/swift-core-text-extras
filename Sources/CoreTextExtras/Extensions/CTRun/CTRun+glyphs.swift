import CoreGraphics
import CoreText
import Foundation

extension CTRun {
    
    /// Returns the glyph identifiers in this run.
    ///
    /// - Parameter range: A `NSRange` specifying which glyphs to retrieve. Defaults to the full run.
    /// - Returns: An array populated via `CTRunGetGlyphs`.
    @inlinable
    public func glyphs(in range: NSRange = NSRange()) -> [CGGlyph] {
        let glyphCount = glyphCount
        return Array(unsafeUninitializedCapacity: glyphCount) { buffer, initializedCount in
            CTRunGetGlyphs(
                self,
                CFRange(range),
                buffer.baseAddress!
            )
            initializedCount = glyphCount
        }
    }
}
