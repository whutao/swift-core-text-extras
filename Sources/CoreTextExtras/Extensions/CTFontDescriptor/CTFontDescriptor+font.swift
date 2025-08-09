import CoreText

extension CTFontDescriptor {
    
    /// Creates a `CTFont` from this descriptor.
    @inlinable
    public func font(size: CGFloat) -> CTFont {
        return CTFontCreateWithFontDescriptor(self, size, nil)
    }
}
