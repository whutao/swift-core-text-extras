import CoreText

extension CTTypesetter {
    
    /// Suggests a string index to break at for fitting text within a given width.
    ///
    /// - Parameters:
    ///   - startIndex: The `CFIndex` in the string from which to begin measuring clusters.
    ///   - width: The `CGFloat` maximum line width to fit text.
    ///   - offset: An optional `CGFloat` horizontal offset adjustment.
    ///     If provided, uses `CTTypesetterSuggestClusterBreakWithOffset`; otherwise uses `CTTypesetterSuggestClusterBreak`.
    /// - Returns: A `CFIndex` indicating the string index at which to break the cluster.
    @inlinable
    public func suggestedClusterBreak(
        at startIndex: CFIndex,
        width: CGFloat,
        offset: CGFloat? = nil
    ) -> CFIndex {
        if let offset {
            return CTTypesetterSuggestClusterBreakWithOffset(self, startIndex, width, offset)
        } else {
            return CTTypesetterSuggestClusterBreak(self, startIndex, width)
        }
    }
}
