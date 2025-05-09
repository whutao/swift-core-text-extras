import CoreText

extension CTFont {
    
    /// Language identifiers that this font supports.
    @inlinable
    public var supportedLanguages: [String] {
        return Array(CTFontCopySupportedLanguages(self))
    }
}
