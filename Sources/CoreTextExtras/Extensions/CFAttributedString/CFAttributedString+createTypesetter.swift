import CoreText

extension CFAttributedString {
    
    /// Creates a Core Text typesetter from this attributed string.
    ///
    /// - Returns: A `CTTypesetter` instance created via `CTTypesetterCreateWithAttributedString`.
    @inlinable
    public func createTypesetter() -> CTTypesetter {
        return CTTypesetterCreateWithAttributedString(self)
    }
    
    /// Creates a Core Text typesetter with the specified options.
    ///
    /// - Parameter options: A dictionary passed to `CTTypesetterCreateWithAttributedStringAndOptions`.
    /// - Returns: A `CTTypesetter` instance if creation succeeds, otherwise `nil`.
    @inlinable
    public func createTypesetter(with options: [CFString: Any]) -> CTTypesetter? {
        return CTTypesetterCreateWithAttributedStringAndOptions(self, options as CFDictionary)
    }
}
