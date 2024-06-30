import CoreText

extension CTRubyAnnotation {
    
    /// Returns the text for the specified ruby position.
    ///
    /// - Parameters:
    ///   - position: The `CTRubyPosition` value specifying the position for which to retrieve the text.
    ///
    /// - Returns: An optional `String` representing the text for the specified position,
    ///   computed using `CTRubyAnnotationGetTextForPosition`.
    @inlinable
    public func text(for position: CTRubyPosition) -> String? {
        return CTRubyAnnotationGetTextForPosition(self, position) as String?
    }
}
