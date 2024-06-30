import CoreText

extension CTRubyAnnotation {
    
    /// Creates a copy of the ruby annotation.
    ///
    /// This method creates and returns a copy of the `CTRubyAnnotation` instance.
    ///
    /// - Returns: A `CTRubyAnnotation` instance that is a copy of the original,
    ///   computed using `CTRubyAnnotationCreateCopy`.
    @inlinable
    public func copy() -> CTRubyAnnotation {
        return CTRubyAnnotationCreateCopy(self)
    }
}
