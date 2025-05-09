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
    ///   - sizeFactor: A size factor that specifies the annotation text size as a percentage of the base text size.
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
    
    /// Creates a ruby annotation with the specified text and layout options.
    ///
    /// - Parameters:
    ///   - text: The annotation string to display (as CFString).
    ///   - position: The `CTRubyPosition` indicating where the annotation appears
    ///     relative to the base text (before, after, inter-character, inline).
    ///   - alignment: The `CTRubyAlignment` specifying how the annotation is aligned
    ///     within its region (start, center, end, auto).
    ///   - overhang: The `CTRubyOverhang` controlling how the annotation
    ///     may extend beyond its base text edges.
    ///   - attributes: A dictionary of additional ruby‐specific attributes
    ///     (e.g. font, size) passed through to CoreText. Defaults to empty.
    /// - Returns: A `CTRubyAnnotation` instance configured with the given text and options.
    @inlinable
    public static func create(
        text: String,
        position: CTRubyPosition,
        alignment: CTRubyAlignment,
        overhang: CTRubyOverhang,
        attributes: [CFString: Any] = [:]
    ) -> CTRubyAnnotation {
        return CTRubyAnnotationCreateWithAttributes(
            alignment,
            overhang,
            position,
            text as CFString,
            attributes as CFDictionary
        )
    }
}
