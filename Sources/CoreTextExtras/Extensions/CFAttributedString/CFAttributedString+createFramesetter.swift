import CoreText

extension CFAttributedString {
    
    /// Creates a framesetter for the attributed string.
    ///
    /// This method creates a `CTFramesetter` object that can be used to generate text
    /// frames for the attributed string.
    ///
    /// - Returns: A `CTFramesetter` object created with the attributed string,
    ///   computed using `CTFramesetterCreateWithAttributedString`.
    @inlinable
    public func createFramesetter() -> CTFramesetter {
        return CTFramesetterCreateWithAttributedString(self)
    }
}
