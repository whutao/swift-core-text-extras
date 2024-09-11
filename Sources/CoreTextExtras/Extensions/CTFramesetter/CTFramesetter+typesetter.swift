#if canImport(CoreText)
import CoreText

extension CTFramesetter {
    
    /// Returns the typesetter associated with the framesetter.
    ///
    /// This property provides access to the `CTTypesetter` object used by the `CTFramesetter`.
    ///
    /// - Returns: The `CTTypesetter` object associated with the framesetter,
    ///   computed using `CTFramesetterGetTypesetter`.
    @inlinable
    public var typesetter: CTTypesetter {
        return CTFramesetterGetTypesetter(self)
    }
}
#endif
