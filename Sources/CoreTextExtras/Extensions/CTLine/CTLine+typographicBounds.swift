import CoreText
import Foundation

extension CTLine {
    
    public typealias TypographicBounds = (
        width: CGFloat,
        ascent: CGFloat,
        descent: CGFloat,
        leading: CGFloat
    )
    
    /// Returns the typographic bounds of the line.
    ///
    /// This property calculates and returns the width, ascent, descent, and leading of the line.
    ///
    /// - Returns: A tuple containing the ascent, descent, and leading values of the line,
    ///   computed using `CTLineGetTypographicBounds`.
    @inlinable
    public var typographicBounds: TypographicBounds {
        var ascent: CGFloat = 0
        var descent: CGFloat = 0
        var leading: CGFloat = 0
        let fullWidth: CGFloat = CTLineGetTypographicBounds(self, &ascent, &descent, &leading)
        return (
            width: fullWidth - trailingWhitespaceWidth,
            ascent: ascent,
            descent: descent,
            leading: leading
        )
    }
    
    /// Returns the typographic height of the line.
    ///
    /// This property calculates and returns the total height of the line, which
    /// is the sum of its ascent, descent, and leading.
    ///
    /// - Returns: A `CGFloat` value representing the total typographic height of the line.
    @inlinable
    public var typographicHeight: CGFloat {
        let (_, ascent, descent, leading) = typographicBounds
        return ascent + descent + leading
    }
}
