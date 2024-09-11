#if canImport(CoreText)
import CoreText

extension CTLine {
    
    /// Returns an array of glyph runs in the line.
    ///
    /// This property provides access to the glyph runs (`CTRun` instances) that make up the line.
    ///
    /// - Returns: An array of `CTRun` objects representing the glyph runs in the line,
    ///   computed using `CTLineGetGlyphRuns`.
    @inlinable
    public var runs: [CTRun] {
        return CTLineGetGlyphRuns(self) as? [CTRun] ?? []
    }
}
#endif
