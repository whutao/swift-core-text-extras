import CoreText
import Foundation

extension NSAttributedString {
    
    /// Creates a Core Text typesetter with the specified options.
    ///
    /// - Parameter options: A dictionary passed to `CTTypesetterCreateWithAttributedStringAndOptions`.
    /// - Returns: A `CTTypesetter` instance if creation succeeds, otherwise `nil`.
    @inlinable
    public func createTypesetter(with options: [CFString: Any]) -> CTTypesetter? {
        return (self as CFAttributedString).createTypesetter(with: options)
    }
    
    /// Creates a Core Text typesetter.
    @inlinable
    public func createTypesetter() -> CTTypesetter {
        return (self as CFAttributedString).createTypesetter()
    }
}
