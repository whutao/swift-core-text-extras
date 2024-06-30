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
    
    /// Returns the horizontal offset for a character index within the line.
    ///
    /// - Parameter index: The `CFIndex` of the character in the string.
    /// - Returns: A `CGFloat` representing the x‐offset from the line origin to the glyph for the given character index,
    ///   obtained via `CTLineGetOffsetForStringIndex`.
    @inlinable
    public func offset(forCharacterIndex index: CFIndex) -> CGFloat {
        return CTLineGetOffsetForStringIndex(self, index, nil)
    }
}
