import CoreText
import Foundation

extension CTRun {
    
    /// Returns the number of glyphs in the run.
    ///
    /// - Complexity: *O(1)* as the internal function `CTRunGetGlyphCount`
    ///   directly retrieves the number of glyphs, which involves a simple lookup operation
    ///   that completes in constant time.
    ///
    /// - Returns: The `CFIndex` value representing the number of glyphs in the run, computed using `CTRunGetGlyphCount`.
    @inlinable
    public var glyphsCount: CFIndex {
        CTRunGetGlyphCount(self)
    }
    
    /// Returns an array of glyphs in the run.
    ///
    /// - Complexity: *O(n)* where *n* is the number of glyphs in the run.
    ///
    /// - Returns: An array of `CGGlyph` values representing the glyphs in the run,
    ///   computed using `CTRunGetGlyphs`.
    @inlinable
    public func glyphs() -> [CGGlyph] {
        let glyphsCount = glyphsCount
        return Array(unsafeUninitializedCapacity: glyphsCount) { buffer, count in
            CTRunGetGlyphs(self, CFRange(), buffer.baseAddress!)
            count = glyphsCount
        }
    }
    
    /// Returns the positions of the glyphs in the run.
    ///
    /// The glyph positions in a run are relative to the origin of the line containing the run.
    ///
    /// - Complexity: *O(n)* where *n* is the number of glyphs in the run.
    ///
    /// - Returns: An array of `CGPoint` values representing the positions of the glyphs in the run,
    ///   computed using `CTRunGetPositions`.
    @inlinable
    public func glyphPositions() -> [CGPoint] {
        let glyphsCount = glyphsCount
        return Array(unsafeUninitializedCapacity: glyphsCount) { buffer, count in
            CTRunGetPositions(self, CFRange(), buffer.baseAddress!)
            count = glyphsCount
        }
    }
}
