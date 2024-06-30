import CoreText

extension CFAttributedString {
    
    /// Creates a Core Text framesetter for laying out this attributed string.
    ///
    /// - Returns: A `CTFramesetter` instance created via `CTFramesetterCreateWithAttributedString`.
    @inlinable
    public func createFramesetter() -> CTFramesetter {
        return CTFramesetterCreateWithAttributedString(self)
    }
}
