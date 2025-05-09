import CoreText

extension CTLine {
    
    /// Returns the bounds of the line as specified by the type and options,
    /// such that the coordinate origin is coincident with the line origin and the rect origin is at the bottom left.
    ///
    /// - Important: If the line is invalid, this function will return `CGRectNull`.
    @inlinable
    public func bounds(options: CTLineBoundsOptions = []) -> CGRect {
        return CTLineGetBoundsWithOptions(self, options)
    }
}
