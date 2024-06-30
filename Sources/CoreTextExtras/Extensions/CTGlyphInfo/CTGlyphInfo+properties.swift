import CoreText
import Foundation

extension CTGlyphInfo {
    
    /// A property that returns the glyph associated with the `CTGlyphInfo` instance.
    ///
    /// - Complexity: *O(1)* as the internal function `CTGlyphInfoGetGlyph`
    ///   directly retrieves the glyph value associated with the `CTGlyphInfo` instance,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: The `CGGlyph` value associated with this `CTGlyphInfo`
    ///   instance, computed using `CTGlyphInfoGetGlyph`.
    @inlinable
    public var glyph: CGGlyph {
        return CTGlyphInfoGetGlyph(self)
    }
    
    /// A property that returns the glyph name associated with the `CTGlyphInfo` instance.
    ///
    /// - Complexity: *O(1)* as the internal function `CTGlyphInfoGetGlyphName`
    ///   directly retrieves the glyph name associated with the `CTGlyphInfo` instance,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: An optional `String` representing the glyph name associated
    ///   with this `CTGlyphInfo` instance, computed using `CTGlyphInfoGetGlyphName`.
    @inlinable
    public var glyphName: String? {
        return CTGlyphInfoGetGlyphName(self) as String?
    }
    
    /// A property that returns the character identifier associated with the `CTGlyphInfo` instance.
    ///
    /// - Complexity: *O(1)* as the internal function `CTGlyphInfoGetCharacterIdentifier`
    ///   directly retrieves the character identifier value associated with the `CTGlyphInfo` instance,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: The `CGFontIndex` value representing the character identifier
    ///   associated with this `CTGlyphInfo` instance, computed
    ///   using `CTGlyphInfoGetCharacterIdentifier`.
    @inlinable
    public var characterIdentifier: CGFontIndex {
        return CTGlyphInfoGetCharacterIdentifier(self)
    }
    
    /// A property that returns the character collection associated with the `CTGlyphInfo` instance.
    ///
    /// - Complexity: *O(1)* as the internal function `CTGlyphInfoGetCharacterCollection`
    ///   directly retrieves the character collection value associated with the `CTGlyphInfo` instance,
    ///   which involves a simple lookup operation that completes in constant time.
    ///
    /// - Returns: The `CTCharacterCollection` value representing the character collection
    ///   associated with this `CTGlyphInfo` instance,
    ///   computed using `CTGlyphInfoGetCharacterCollection`.
    @inlinable
    public var characterCollection: CTCharacterCollection {
        return CTGlyphInfoGetCharacterCollection(self)
    }
}
