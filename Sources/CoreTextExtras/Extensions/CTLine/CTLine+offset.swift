import CoreText

extension CTLine {
    
    /// Returns the primary horizontal offset for the glyph corresponding to the given string index.
    ///
    /// This wraps `CTLineGetOffsetForStringIndex(_:_:_:)`, discarding the secondary offset.
    ///
    /// - Parameter index: A string index (character position) within the line.
    /// - Returns: The x-offset (in the line’s coordinate space) where the glyph for `index` is drawn.
    @inlinable
    public func offset(forStringIndex index: CFIndex) -> CGFloat {
        let (primaryOffset, _) = offset(forStringIndex: index)
        return primaryOffset
    }
    
    /// Returns both the primary and secondary horizontal offsets for the glyph at the given string index.
    ///
    /// The primary offset is where the glyph cluster normally begins. The secondary offset
    /// is used when the index falls inside a multi-glyph cluster and indicates the alternative
    /// edge (useful for cursor placement on the trailing edge of a cluster).
    ///
    /// - Parameter index: A string index (character position) within the line.
    /// - Returns: A tuple containing:
    ///   - `primary`: The main x-offset for the glyph cluster at `index`.
    ///   - `secondary`: The secondary x-offset for the cluster (zero if not applicable).
    @inlinable
    public func offset(forStringIndex index: CFIndex) -> (primary: CGFloat, secondary: CGFloat) {
        var secondaryOffset: CGFloat = 0
        let primaryOffset = CTLineGetOffsetForStringIndex(self, index, &secondaryOffset)
        return (primary: primaryOffset, secondary: secondaryOffset)
    }
}
