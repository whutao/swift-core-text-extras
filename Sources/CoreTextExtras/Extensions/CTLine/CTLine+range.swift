#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension CTLine {
    
    /// Returns the string range of the line.
    ///
    /// This property provides the range of characters that the `CTLine` represents.
    ///
    /// - Complexity: *O(1)* as it retrieves the string range from the line, which involves
    ///   a simple lookup operation that completes in constant time.
    ///
    /// - Returns: An `NSRange` value representing the range of characters that the line covers,
    ///   computed using `CTLineGetStringRange`.
    @inlinable
    public var stringRange: NSRange {
        return NSRange(CTLineGetStringRange(self))
    }
}
#endif
