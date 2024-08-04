#if canImport(CoreText)
import CoreText

extension CTRubyAnnotation {
    
    /// Creates a copy of the ruby annotation.
    ///
    /// This method creates and returns a copy of the `CTRubyAnnotation` instance.
    ///
    /// - Complexity: *O(1)* as it creates a copy of the ruby annotation, which involves
    ///   a simple duplication operation that completes in constant time.
    ///
    /// - Returns: A `CTRubyAnnotation` instance that is a copy of the original,
    ///   computed using `CTRubyAnnotationCreateCopy`.
    @inlinable
    public func copy() -> CTRubyAnnotation {
        return CTRubyAnnotationCreateCopy(self)
    }
}
#endif
