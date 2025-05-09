import CoreText
import Foundation

extension CTRun {
    
    /// The typographic metrics for this entire run.
    ///
    /// Wraps `CTRunGetTypographicBounds(_:_:_:_:)` over the full glyph range,
    /// returning a `CTTypographicBounds` containing:
    /// - `width`: the total advance width of the run,
    /// - `ascent`: the maximum distance above the baseline,
    /// - `descent`: the maximum distance below the baseline,
    /// - `leading`: the line spacing.
    @inlinable
    public var typographicBounds: CTTypographicBounds {
        return typographicBounds(for: NSRange(location: 0, length: glyphCount))
    }
    
    /// Returns the typographic metrics for the glyphs in the specified range.
    ///
    /// Wraps `CTRunGetTypographicBounds(_:_:_:_:)` to produce a
    /// `CTTypographicBounds` value for just that subset of glyphs.
    ///
    /// - Parameter range: The portion of the run to measure. If the length of the range is set to 0,
    ///   then the measure operation continues from the range’s start index to the end of the run.
    @inlinable
    public func typographicBounds(for range: NSRange) -> CTTypographicBounds {
        var ascent: CGFloat = 0
        var descent: CGFloat = 0
        var leading: CGFloat = 0
        let width: CGFloat = CTRunGetTypographicBounds(
            self,
            CFRange(range),
            &ascent,
            &descent,
            &leading
        )
        return CTTypographicBounds(
            width: width,
            ascent: ascent,
            descent: descent,
            leading: leading
        )
    }
}
