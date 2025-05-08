import CoreGraphics
import CoreText

extension CTFont {
    
    /// Returns the optical bounding rectangles for the specified glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values for which to compute optical bounds.
    /// - Returns: An array of optical bounds for each glyph,
    ///   calculated via `CTFontGetOpticalBoundsForGlyphs` with default options.
    @inlinable
    public func opticalBounds(of glyphs: [CGGlyph]) -> [CGRect] {
        return Array(unsafeUninitializedCapacity: glyphs.count) { buffer, initializedCount in
            CTFontGetOpticalBoundsForGlyphs(
                self,
                glyphs,
                buffer.baseAddress,
                glyphs.count,
                CFOptionFlags()
            )
            initializedCount = glyphs.count
        }
    }
}
