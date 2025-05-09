import CoreText

extension CTTypesetter {
    
    /// Creates a framesetter directly from a typesetter.
    @inlinable
    public func createFramesetter() -> CTFramesetter {
        return CTFramesetterCreateWithTypesetter(self)
    }
}
