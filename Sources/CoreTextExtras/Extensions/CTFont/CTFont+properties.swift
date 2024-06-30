import CoreText

extension CTFont {
    
    /// Returns the family name of the font.
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
}
