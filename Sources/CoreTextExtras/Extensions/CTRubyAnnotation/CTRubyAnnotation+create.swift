import CoreText

extension CTRubyAnnotation {
    
    /// Creates a new ruby annotation with the specified texts, alignment, overhang, and size factor.
    ///
    /// - Parameters:
    ///   - textPositionedBefore: The text positioned before the base text. Default is `nil`.
    ///   - textPositionedAfter: The text positioned after the base text. Default is `nil`.
    ///   - textPositionedInterCharacter: The text positioned inter-character with the base text. Default is `nil`.
    ///   - textPositionedInline: The text positioned inline with the base text. Default is `nil`.
    ///   - alignment: The `CTRubyAlignment` value specifying the alignment of the ruby annotation.
    ///   - overhang: The `CTRubyOverhang` value specifying the overhang of the ruby annotation.
    ///   - sizeFactor: The `CGFloat` value specifying the size factor of the ruby annotation.
    ///
    /// - Returns: A `CTRubyAnnotation` instance created with the specified parameters,
    ///   computed using `CTRubyAnnotationCreate`.
    @inlinable
    public static func create(
        textPositionedBefore before: String? = nil,
        textPositionedAfter after: String? = nil,
        textPositionedInterCharacter interCharacter: String? = nil,
        textPositionedInline inline: String? = nil,
        alignment: CTRubyAlignment,
        overhang: CTRubyOverhang,
        sizeFactor: CGFloat
    ) -> CTRubyAnnotation {
        var annotationTexts: [Unmanaged<CFString>?] = [before, after, interCharacter, inline]
            .map { $0 as CFString? }
            .map { $0.flatMap(Unmanaged.passRetained) }
        defer { annotationTexts.forEach { $0?.release() } }
        return CTRubyAnnotationCreate(alignment, overhang, sizeFactor, &annotationTexts)
    }
}
