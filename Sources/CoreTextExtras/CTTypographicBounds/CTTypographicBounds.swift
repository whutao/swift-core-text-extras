import CoreGraphics

/// Encapsulates the typographic measurements for a line or run of text.
///
/// Contains the total advance width, ascent (height above the baseline),
/// descent (depth below the baseline), and leading (line spacing).
public struct CTTypographicBounds: Equatable, Hashable, Sendable {
    
    /// The total horizontal advance (width) of the text.
    public let width: CGFloat
    
    /// The distance above the text baseline.
    public let ascent: CGFloat
    
    /// The distance below the text baseline.
    public let descent: CGFloat
    
    /// The additional spacing between lines of text.
    public let leading: CGFloat
    
    /// Creates a new `CTTypographicBounds` value.
    public init(width: CGFloat, ascent: CGFloat, descent: CGFloat, leading: CGFloat) {
        self.width = width
        self.ascent = ascent
        self.descent = descent
        self.leading = leading
    }
}
