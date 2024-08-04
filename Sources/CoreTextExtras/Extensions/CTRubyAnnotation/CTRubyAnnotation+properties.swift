#if canImport(CoreText)
import CoreText

extension CTRubyAnnotation {
    
    /// Returns the alignment of the ruby annotation.
    ///
    /// This property provides the alignment of the `CTRubyAnnotation` instance.
    ///
    /// - Complexity: *O(1)* as it retrieves the alignment from the ruby annotation,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: The `CTRubyAlignment` value representing the alignment of the ruby annotation,
    ///   computed using `CTRubyAnnotationGetAlignment`.
    @inlinable
    public var alignemnt: CTRubyAlignment {
        return CTRubyAnnotationGetAlignment(self)
    }
    
    /// Returns the overhang of the ruby annotation.
    ///
    /// This property provides the overhang of the `CTRubyAnnotation` instance.
    ///
    /// - Complexity: *O(1)* as it retrieves the overhang from the ruby annotation,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: The `CTRubyOverhang` value representing the overhang of the ruby annotation,
    ///   computed using `CTRubyAnnotationGetOverhang`.
    @inlinable
    public var overhang: CTRubyOverhang {
        return CTRubyAnnotationGetOverhang(self)
    }
    
    /// Returns the size factor of the ruby annotation.
    ///
    /// This property provides the size factor of the `CTRubyAnnotation` instance.
    ///
    /// - Complexity: *O(1)* as it retrieves the size factor from the ruby annotation,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: The `CGFloat` value representing the size factor of the ruby annotation,
    ///   computed using `CTRubyAnnotationGetSizeFactor`.
    @inlinable
    public var sizeFactor: CGFloat {
        return CTRubyAnnotationGetSizeFactor(self)
    }
    
    /// Returns the text for the specified ruby position.
    ///
    /// This method retrieves the text for the given ruby position in the `CTRubyAnnotation` instance.
    ///
    /// - Parameters:
    ///   - position: The `CTRubyPosition` value specifying the position for which to retrieve the text.
    ///
    /// - Returns: An optional `String` representing the text for the specified position,
    ///   computed using `CTRubyAnnotationGetTextForPosition`.
    @inlinable
    public func text(for position: CTRubyPosition) -> String? {
        return CTRubyAnnotationGetTextForPosition(self, position) as String?
    }
}
#endif
