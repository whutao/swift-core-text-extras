import CoreText
import Foundation

extension NSAttributedString {
    
    /// Creates a Core Text line from this attributed string.
    ///
    /// - Returns: A `CTLine` instance created via `CTLineCreateWithAttributedString`.
    @inlinable
    public func createLine() -> CTLine {
        return (self as CFAttributedString).createLine()
    }
}
