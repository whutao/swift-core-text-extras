#if canImport(CoreText)
import CoreText

extension Array where Element == CGGlyph {
    
    @usableFromInline
    func advances(for font: CTFont, orientation: CTFontOrientation) -> [CGSize] {
        return Array<CGSize>(unsafeUninitializedCapacity: count) { buffer, count in
            CTFontGetAdvancesForGlyphs(
                font,
                orientation,
                self,
                buffer.baseAddress!,
                self.count
            )
            count = self.count
        }
    }
    
    @usableFromInline
    func boundingRects(for font: CTFont, orientation: CTFontOrientation) -> [CGRect] {
        return Array<CGRect>(unsafeUninitializedCapacity: count) { buffer, count in
            CTFontGetBoundingRectsForGlyphs(
                font,
                orientation,
                self,
                buffer.baseAddress!,
                self.count
            )
            count = self.count
        }
    }
    
    @usableFromInline
    func opticalBounds(for font: CTFont) -> [CGRect] {
        return Array<CGRect>(unsafeUninitializedCapacity: count) { buffer, count in
            CTFontGetOpticalBoundsForGlyphs(
                font,
                self,
                buffer.baseAddress!,
                self.count,
                CFOptionFlags()
            )
            count = self.count
        }
    }
}
#endif
