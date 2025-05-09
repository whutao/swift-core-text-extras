import CoreGraphics
import CoreText

extension CTLine {
    
    /// The typographic metrics of this line.
    ///
    /// Wraps `CTLineGetTypographicBounds(_:_:_:_:)` to produce a
    /// `CTTypographicBounds` value containing:
    /// - `width`: the line’s advance width,
    /// - `ascent`: the distance above the baseline,
    /// - `descent`: the distance below the baseline,
    /// - `leading`: the additional line‐spacing.
    ///
    /// - Important: Trailing whitespace is excluded from the width value.
    @inlinable
    public var typographicBounds: CTTypographicBounds {
        var ascent: CGFloat = 0
        var descent: CGFloat = 0
        var leading: CGFloat = 0
        let fullWidth: CGFloat = CTLineGetTypographicBounds(self, &ascent, &descent, &leading)
        return CTTypographicBounds(
            width: fullWidth - trailingWhitespaceWidth,
            ascent: ascent,
            descent: descent,
            leading: leading
        )
    }
}
