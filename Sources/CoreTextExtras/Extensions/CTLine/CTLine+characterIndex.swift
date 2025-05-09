import CoreText

extension CTLine {
    
    /// Returns the string index corresponding to a point within the line.
    ///
    /// - Parameter position: The `CGPoint` in the line’s coordinate space to query.
    /// - Returns: A `CFIndex` representing the character index at the specified position,
    ///   obtained via `CTLineGetStringIndexForPosition`.
    @inlinable
    public func characterIndex(for position: CGPoint) -> CFIndex {
        return CTLineGetStringIndexForPosition(self, position)
    }
}
