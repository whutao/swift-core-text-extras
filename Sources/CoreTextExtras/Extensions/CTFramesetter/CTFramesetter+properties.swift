import CoreText

extension CTFramesetter {
    
    /// Returns the typesetter associated with the framesetter.
    ///
    /// - Returns: The `CTTypesetter` object associated with the framesetter,
    ///   computed using `CTFramesetterGetTypesetter`.
    @inlinable
    public var typesetter: CTTypesetter {
        return CTFramesetterGetTypesetter(self)
    }
}
