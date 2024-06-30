import CoreGraphics
import CoreText

extension CTFont {
    
    /// Creates a vector path for a specific glyph in the font.
    ///
    /// - Parameters:
    ///   - glyph: The `CGGlyph` to generate the path for.
    ///   - transform: A `CGAffineTransform` applied to the glyph’s outline. Defaults to `.identity`.
    /// - Returns: A `CGPath` representing the glyph’s outline,
    ///   created via `CTFontCreatePathForGlyph`, or `nil` if unavailable.
    @inlinable
    public func path(for glyph: CGGlyph, transform: CGAffineTransform = .identity) -> CGPath? {
        var transform = transform
        return CTFontCreatePathForGlyph(self, glyph, &transform)
    }
}
