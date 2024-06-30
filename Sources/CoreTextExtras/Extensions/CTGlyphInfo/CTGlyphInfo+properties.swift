import CoreText
import Foundation

extension CTGlyphInfo {
    
    /// A property that returns the character collection associated with the `CTGlyphInfo` instance.
    ///
    /// - Returns: The `CTCharacterCollection` value representing the character collection
    ///   associated with this `CTGlyphInfo` instance,
    ///   computed using `CTGlyphInfoGetCharacterCollection`.
    @inlinable
    public var characterCollection: CTCharacterCollection {
        return CTGlyphInfoGetCharacterCollection(self)
    }
    
    /// A property that returns the character identifier associated with the `CTGlyphInfo` instance.
    ///
    /// - Returns: The `CGFontIndex` value representing the character identifier
    ///   associated with this `CTGlyphInfo` instance, computed
    ///   using `CTGlyphInfoGetCharacterIdentifier`.
    @inlinable
    public var characterIdentifier: CGFontIndex {
        return CTGlyphInfoGetCharacterIdentifier(self)
    }
    
    /// A property that returns the glyph associated with the `CTGlyphInfo` instance.
    ///
    /// - Returns: The `CGGlyph` value associated with this `CTGlyphInfo`
    ///   instance, computed using `CTGlyphInfoGetGlyph`.
    @inlinable
    public var glyph: CGGlyph {
        return CTGlyphInfoGetGlyph(self)
    }
    
    /// A property that returns the glyph name associated with the `CTGlyphInfo` instance.
    ///
    /// - Returns: An optional `String` representing the glyph name associated
    ///   with this `CTGlyphInfo` instance, computed using `CTGlyphInfoGetGlyphName`.
    @inlinable
    public var glyphName: String? {
        return CTGlyphInfoGetGlyphName(self) as String?
    }
}
