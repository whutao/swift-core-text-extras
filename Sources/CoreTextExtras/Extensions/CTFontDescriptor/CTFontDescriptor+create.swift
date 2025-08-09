import CoreText

extension CTFontDescriptor {
    
    /// Creates a new `CTFontDescriptor` from the given CoreText attributes.
    ///
    /// - Parameter attributes: A dictionary of font descriptor attributes, such as `kCTFontNameAttribute` or `kCTFontSizeAttribute`.
    @inlinable
    public static func create(with attributes: [CFString: Any]) -> CTFontDescriptor {
        return CTFontDescriptorCreateWithAttributes(attributes as CFDictionary)
    }
}
