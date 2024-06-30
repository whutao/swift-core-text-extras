import CoreText

extension CTFontDescriptor {
    
    /// A dictionary of attributes for this font descriptor.
    ///
    /// - Returns: A dictionary created via `CTFontDescriptorCopyAttributes`.
    @inlinable
    public var attributes: [CFString: Any] {
        return Dictionary(CTFontDescriptorCopyAttributes(self))
    }
}
