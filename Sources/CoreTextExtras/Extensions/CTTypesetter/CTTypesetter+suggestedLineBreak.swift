import CoreText

extension CTTypesetter {
    
    /// Suggests a string index to break a line for fitting text within the given width.
    ///
    /// - Parameters:
    ///   - startIndex: The `CFIndex` in the string from which to begin measuring text.
    ///   - width: The `CGFloat` maximum line width to fit text.
    ///   - offset: An optional `CGFloat` horizontal offset adjustment.
    ///     If provided, calls `CTTypesetterSuggestLineBreakWithOffset`; otherwise calls `CTTypesetterSuggestLineBreak`.
    /// - Returns: A `CFIndex` indicating the string index at which to break the line.
    @inlinable
    public func suggestedLineBreak(
        at startIndex: CFIndex,
        width: CGFloat,
        offset: CGFloat? = nil
    ) -> CFIndex {
        if let offset {
            return CTTypesetterSuggestLineBreakWithOffset(self, startIndex, width, offset)
        } else {
            return CTTypesetterSuggestLineBreak(self, startIndex, width)
        }
    }
}
