import CoreText

extension CTFont {
    
    /// Returns the family name of the font.
    ///
    /// This property provides the family name of the `CTFont` instance.
    ///
    /// - Returns: A `String` value representing the family name of the font,
    ///   computed using `CTFontCopyFamilyName`.
    @inlinable
    public var familyName: String {
        return CTFontCopyFamilyName(self) as String
    }
    
    /// The size of the font.
    ///
    /// - Returns: The `CGFloat` value representing the size of the font,
    ///   computed using `CTFontGetSize`.
    @inlinable
    public var size: CGFloat {
        return CTFontGetSize(self)
    }
    
    /// The slant angle of the font.
    ///
    /// - Returns: The `CGFloat` value representing the slant angle of the font,
    ///   computed using `CTFontGetSlantAngle`.
    @inlinable
    public var slantAngle: CGFloat {
        return CTFontGetSlantAngle(self)
    }
    
    /// The x-height of the font.
    ///
    /// - Returns: The `CGFloat` value representing the x-height of the font,
    ///   computed using `CTFontGetXHeight`.
    @inlinable
    public var xHeight: CGFloat {
        return CTFontGetXHeight(self)
    }
    
    /// The cap height of the font.
    ///
    /// - Returns: The `CGFloat` value representing the cap height of the font,
    ///   computed using `CTFontGetCapHeight`.
    @inlinable
    public var capHeight: CGFloat {
        return CTFontGetCapHeight(self)
    }
    
    /// The leading of the font.
    ///
    /// - Returns: The `CGFloat` value representing the leading of the font,
    ///   computed using `CTFontGetLeading`.
    @inlinable
    public var leading: CGFloat {
        return CTFontGetLeading(self)
    }
    
    /// The descent of the font.
    ///
    /// - Returns: The `CGFloat` value representing the descent of the font,
    ///   computed using `CTFontGetDescent`.
    @inlinable
    public var descent: CGFloat {
        return CTFontGetDescent(self)
    }
    
    /// The ascent of the font.
    ///
    /// - Returns: The `CGFloat` value representing the ascent of the font,
    /// computed using `CTFontGetAscent`.
    @inlinable
    public var ascent: CGFloat {
        return CTFontGetAscent(self)
    }
    
    /// The number of glyphs in the font.
    ///
    /// - Returns: The `CFIndex` value representing the number of glyphs in the font,
    ///   computed using `CTFontGetGlyphCount`.
    @inlinable
    public var glyphCount: CFIndex {
        return CTFontGetGlyphCount(self)
    }
    
    /// The bounding box of the font.
    ///
    /// - Returns: The `CGRect` value representing the bounding box of the font,
    ///   computed using `CTFontGetBoundingBox`.
    @inlinable
    public var boundingBox: CGRect {
        return CTFontGetBoundingBox(self)
    }
    
    /// Returns the advances for the specified glyphs.
    ///
    /// This method calculates and returns the advances for the given array of glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values for which to calculate advances.
    ///   - orientation: The orientation of the glyphs. The default value is `.default`.
    ///
    /// - Returns: An array of `CGSize` values representing the advances for the specified glyphs,
    ///   computed using `CTFontGetAdvancesForGlyphs`.
    @inlinable
    public func advances(
        of glyphs: [CGGlyph],
        orientation: CTFontOrientation = .default
    ) -> [CGSize] {
        return glyphs.advances(for: self, orientation: orientation)
    }
    
    /// Returns the bounding rectangles for the specified glyphs.
    ///
    /// This method calculates and returns the bounding rectangles for the given array of glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values for which to calculate bounding rectangles.
    ///   - orientation: The orientation of the glyphs. The default value is `.default`.
    ///
    /// - Returns: An array of `CGRect` values representing the bounding
    ///   rectangles for the specified glyphs, computed using `CTFontGetBoundingRectsForGlyphs`.
    @inlinable
    public func boundingRects(
        of glyphs: [CGGlyph],
        orientation: CTFontOrientation = .default
    ) -> [CGRect] {
        return glyphs.boundingRects(for: self, orientation: orientation)
    }
    
    /// Returns the optical bounds for the specified glyphs.
    ///
    /// This method calculates and returns the optical bounds for the given array of glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values for which to calculate optical bounds.
    ///
    /// - Returns: An array of `CGRect` values representing the optical bounds for the specified glyphs,
    ///   computed using `CTFontGetOpticalBoundsForGlyphs`.
    @inlinable
    public func opticalBounds(of glyphs: [CGGlyph]) -> [CGRect] {
        return glyphs.opticalBounds(for: self)
    }
    
    /// Returns the total advance width for the specified glyphs.
    ///
    /// This method calculates and returns the total advance width for the given array of glyphs.
    ///
    /// - Parameters:
    ///   - glyphs: An array of `CGGlyph` values for which to calculate the total advance width.
    ///
    /// - Returns: A `CGFloat` value representing the total advance width for the specified glyphs,
    ///   computed by summing the width of each advance.
    @inlinable
    public func totalAdvance(of glyphs: [CGGlyph]) -> CGFloat {
        return advances(of: glyphs).reduce(0, { $0 + $1.width })
    }
    
    /// Returns the path for the specified glyph.
    ///
    /// This method creates and returns a path for the given glyph, transformed by the specified transform.
    ///
    /// - Parameters:
    ///   - glyph: The `CGGlyph` value for which to create a path.
    ///   - transform: The transform to apply to the path. The default value is `.identity`.
    ///
    /// - Returns: An optional `CGPath` representing the path for the specified glyph,
    ///   computed using `CTFontCreatePathForGlyph`.
    @inlinable
    public func path(for glyph: CGGlyph, transform: CGAffineTransform = .identity) -> CGPath? {
        var transform = transform
        return CTFontCreatePathForGlyph(self, glyph, &transform)
    }
}
