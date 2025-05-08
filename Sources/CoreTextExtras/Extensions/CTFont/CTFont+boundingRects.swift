import CoreGraphics
import CoreText

extension CTFont {
    
    /// Returns the bounding rectangles for the provided glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values for which to retrieve bounding rectangles.
    ///   - orientation: A `CTFontOrientation` indicating text flow (horizontal or vertical). Defaults to `.default`.
    /// - Returns: An array containing each glyph’s bounding rectangle,
    ///   obtained via `CTFontGetBoundingRectsForGlyphs`.
    @inlinable
    public func boundingRects(of glyphs: [CGGlyph], orientation: CTFontOrientation = .default) -> [CGRect] {
        return Array(unsafeUninitializedCapacity: glyphs.count) { buffer, initializedCount in
            CTFontGetBoundingRectsForGlyphs(
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
