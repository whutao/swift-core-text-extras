import CoreText

extension Array where Element == CGGlyph {
    
    @usableFromInline
    func advances(for font: CTFont, orientation: CTFontOrientation) -> [CGSize] {
        return Array<CGSize>(unsafeUninitializedCapacity: count) { buffer, initializedCount in
            CTFontGetAdvancesForGlyphs(
                font,
                orientation,
                self,
                buffer.baseAddress!,
                count
            )
            initializedCount = count
        }
    }
    
    @usableFromInline
    func boundingRects(for font: CTFont, orientation: CTFontOrientation) -> [CGRect] {
        return Array<CGRect>(unsafeUninitializedCapacity: count) { buffer, initializedCount in
            CTFontGetBoundingRectsForGlyphs(
                font,
                orientation,
                self,
                buffer.baseAddress!,
                count
            )
            initializedCount = count
        }
    }
    
    @usableFromInline
    func opticalBounds(for font: CTFont) -> [CGRect] {
        return Array<CGRect>(unsafeUninitializedCapacity: count) { buffer, initializedCount in
            CTFontGetOpticalBoundsForGlyphs(
                font,
                self,
                buffer.baseAddress!,
                count,
                CFOptionFlags()
            )
            initializedCount = count
        }
    }
}
