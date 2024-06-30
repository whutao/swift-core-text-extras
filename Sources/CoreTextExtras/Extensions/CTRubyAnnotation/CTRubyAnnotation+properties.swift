import CoreText

extension CTRubyAnnotation {
    
    /// Returns the alignment of the ruby annotation.
    ///
    /// - Returns: The `CTRubyAlignment` value representing the alignment of the ruby annotation,
    ///   computed using `CTRubyAnnotationGetAlignment`.
    @inlinable
    public var alignemnt: CTRubyAlignment {
        return CTRubyAnnotationGetAlignment(self)
    }
    
    /// Returns the overhang of the ruby annotation.
    ///
    /// - Returns: The `CTRubyOverhang` value representing the overhang of the ruby annotation,
    ///   computed using `CTRubyAnnotationGetOverhang`.
    @inlinable
    public var overhang: CTRubyOverhang {
        return CTRubyAnnotationGetOverhang(self)
    }
    
    /// Returns the size factor of the ruby annotation.
    ///
    /// - Returns: The `CGFloat` value representing the size factor of the ruby annotation,
    ///   computed using `CTRubyAnnotationGetSizeFactor`.
    @inlinable
    public var sizeFactor: CGFloat {
        return CTRubyAnnotationGetSizeFactor(self)
    }
}
