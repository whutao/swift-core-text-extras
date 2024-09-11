#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension CTRun {
    
    /// Returns the number of glyphs in the run.
    ///
    /// - Returns: The `CFIndex` value representing the number of glyphs
    ///   in the run, computed using `CTRunGetGlyphCount`.
    @inlinable
    public var glyphsCount: CFIndex {
        return CTRunGetGlyphCount(self)
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
#endif
