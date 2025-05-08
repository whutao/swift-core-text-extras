import CoreText

extension CTParagraphStyle {
    
    /// Returns a new paragraph style duplicating this one.
    ///
    /// This wraps the Core Text function `CTParagraphStyleCreateCopy(_:)`,
    /// creating an independent copy of the style object so you can modify
    /// it without affecting the original.
    @inlinable
    public func copy() -> CTParagraphStyle {
        return CTParagraphStyleCreateCopy(self)
    }
}
