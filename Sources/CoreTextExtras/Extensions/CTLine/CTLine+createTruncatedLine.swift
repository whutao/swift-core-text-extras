import CoreText

extension CTLine {
    
    /// Creates a truncated line from the current line.
    ///
    /// This method creates and returns a truncated `CTLine` instance based on the current line.
    /// The line is truncated at the specified width and truncation type, optionally using a truncation token.
    ///
    /// - Parameters:
    ///   - truncationType: The `CTLineTruncationType` specifying how the line
    ///     should be truncated (start, middle, or end).
    ///   - truncationWidth: The `CGFloat` value specifying the width at which the line should be truncated.
    ///   - truncationToken: An optional `CTLine` instance to be used as the truncation token (typically an ellipsis).
    ///
    /// - Returns: A new `CTLine` instance that represents the truncated line, or `nil` if truncation is not possible,
    ///   computed using `CTLineCreateTruncatedLine`.
    @inlinable
    public func createTruncatedLine(
        ofType truncationType: CTLineTruncationType,
        atWidth truncationWidth: CGFloat,
        withTruncationToken truncationToken: CTLine?
    ) -> CTLine? {
        return CTLineCreateTruncatedLine(
            self,
            truncationWidth,
            truncationType,
            truncationToken
        )
    }
}
