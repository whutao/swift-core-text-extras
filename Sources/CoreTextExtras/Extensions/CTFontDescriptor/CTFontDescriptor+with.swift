import CoreText

extension CTFontDescriptor {
    
    /// Returns a copy of the descriptor with the specified variation axis set.
    @inlinable
    public func withVariation(_ identifier: CTFontVariationAxis.Identifier, value: CGFloat) -> CTFontDescriptor {
        return CTFontDescriptorCreateCopyWithVariation(self, identifier.rawValue as CFNumber, value)
    }
    
    /// Returns a copy of the descriptor with the specified attributes merged.
    ///
    /// Existing attributes with the same key are replaced.
    @inlinable
    public func withAttributes(_ attributes: [CFString: Any]) -> CTFontDescriptor {
        return CTFontDescriptorCreateCopyWithAttributes(self, attributes as CFDictionary)
    }
}
