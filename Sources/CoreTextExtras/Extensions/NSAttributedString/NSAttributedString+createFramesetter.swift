import CoreText
import Foundation

extension NSAttributedString {
    
    /// Creates a Core Text framesetter for laying out this attributed string.
    ///
    /// - Returns: A `CTFramesetter` instance created via `CTFramesetterCreateWithAttributedString`.
    @inlinable
    public func createFramesetter() -> CTFramesetter {
        return (self as CFAttributedString).createFramesetter()
    }
}
