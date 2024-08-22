#if canImport(CoreText)
import CoreText

extension Array where Element == CGGlyph {
    
    @usableFromInline
    func advances(for font: CTFont, orientation: CTFontOrientation) -> [CGSize] {
        let glyphCount = count
        return Array<CGSize>(unsafeUninitializedCapacity: glyphCount) { buffer, count in
            CTFontGetAdvancesForGlyphs(
                font,
                orientation,
                self,
                buffer.baseAddress!,
                glyphCount
            )
            count = glyphCount
        }
    }
    
    @usableFromInline
    func boundingRects(for font: CTFont, orientation: CTFontOrientation) -> [CGRect] {
        let glyphCount = count
        return Array<CGRect>(unsafeUninitializedCapacity: count) { buffer, count in
            CTFontGetBoundingRectsForGlyphs(
                font,
                orientation,
                self,
                buffer.baseAddress!,
                glyphCount
            )
            count = glyphCount
        }
    }
    
    @usableFromInline
    func opticalBounds(for font: CTFont) -> [CGRect] {
        let glyphCount = count
        return Array<CGRect>(unsafeUninitializedCapacity: count) { buffer, count in
            CTFontGetOpticalBoundsForGlyphs(
                font,
                self,
                buffer.baseAddress!,
                glyphCount,
                CFOptionFlags()
            )
            count = glyphCount
        }
    }
}
#endif
