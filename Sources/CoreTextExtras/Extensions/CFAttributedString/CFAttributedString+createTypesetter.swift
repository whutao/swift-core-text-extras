import CoreText

extension CFAttributedString {
    
    /// Creates a Core Text typesetter with the specified options.
    ///
    /// - Parameter options: A dictionary passed to `CTTypesetterCreateWithAttributedStringAndOptions`.
    /// - Returns: A `CTTypesetter` instance if creation succeeds, otherwise `nil`.
    @inlinable
    public func createTypesetter(with options: [CFString: Any]) -> CTTypesetter? {
        return CTTypesetterCreateWithAttributedStringAndOptions(self, options as CFDictionary)
    }
    
    /// Creates a Core Text typesetter with the specified options.
    @inlinable
    public func createTypesetter(with options: CTTypesetter.CreateOptions?) -> CTTypesetter? {
        return CTTypesetterCreateWithAttributedStringAndOptions(self, options?.asCFDictionary)
    }
    
    /// Creates a Core Text typesetter.
    @inlinable
    public func createTypesetter() -> CTTypesetter {
        return CTTypesetterCreateWithAttributedString(self)
    }
}
