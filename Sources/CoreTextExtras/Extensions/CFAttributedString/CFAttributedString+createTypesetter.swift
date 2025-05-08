import CoreText

extension CFAttributedString {
    
    /// Creates a Core Text typesetter with the specified options.
    ///
    /// - Parameter options: A dictionary passed to `CTTypesetterCreateWithAttributedStringAndOptions`.
    /// - Returns: A `CTTypesetter` instance if creation succeeds, otherwise `nil`.
    @inlinable
    public func createTypesetter(with options: [CFString: Any]? = nil) -> CTTypesetter? {
        if let options {
            return CTTypesetterCreateWithAttributedStringAndOptions(self, options as CFDictionary?)
        } else {
            return CTTypesetterCreateWithAttributedString(self)
        }
    }
}
