#if canImport(CoreText)
import CoreText

extension CFAttributedString {
    
    /// Creates a framesetter for the attributed string.
    ///
    /// This method creates a `CTFramesetter` object that can be used to generate text
    /// frames for the attributed string.
    ///
    /// This property provides the family name of the `CTFont` instance.
    ///
    /// - Complexity: *O(1)* as it retrieves the family name from the font, which
    ///   involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: A `String` value representing the family name of the font,
    ///   computed using `CTFontCopyFamilyName`.
    /// - Complexity: *O(n)* where *n* is the length of the attributed string, as it involves
    ///   analyzing the entire string to prepare for text layout.
    ///
    /// - Returns: A `CTFramesetter` object created with the attributed string,
    ///   computed using `CTFramesetterCreateWithAttributedString`.
    @inlinable
    public func createFramesetter() -> CTFramesetter {
        return CTFramesetterCreateWithAttributedString(self)
    }
}
#endif
