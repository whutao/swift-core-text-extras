#if canImport(CoreText)
import CoreText

extension CFAttributedString {
    
    /// Creates a line from the attributed string.
    ///
    /// This method creates and returns a `CTLine` instance based on the attributed string.
    ///
    /// - Returns: A `CTLine` instance that represents the line created from the attributed string,
    ///   computed using `CTLineCreateWithAttributedString`.
    @inlinable
    public func createLine() -> CTLine {
        return CTLineCreateWithAttributedString(self)
    }
}
#endif
