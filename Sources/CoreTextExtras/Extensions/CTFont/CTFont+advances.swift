import CoreGraphics
import CoreText

extension CTFont {
    
    /// Returns the advance distances for the provided glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values to measure.
    ///   - orientation: A `CTFontOrientation` specifying text flow (horizontal or vertical). Defaults to `.default`.
    /// - Returns: An array containing the advance (width or height) of each glyph,
    ///   computed via `CTFontGetAdvancesForGlyphs`.
    @inlinable
    public func advances(of glyphs: [CGGlyph], orientation: CTFontOrientation = .default) -> [CGSize] {
        return Array<CGSize>(unsafeUninitializedCapacity: glyphs.count) { buffer, initializedCount in
            CTFontGetAdvancesForGlyphs(
                self,
                orientation,
                glyphs,
                buffer.baseAddress,
                glyphs.count
            )
            initializedCount = glyphs.count
        }
    }
}
