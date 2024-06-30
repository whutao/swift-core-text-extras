import CoreText
import Foundation

extension CTRun {
    
    public typealias TypographicBounds = (
        width: CGFloat,
        ascent: CGFloat,
        descent: CGFloat,
        leading: CGFloat
    )
    
    /// Returns the typographic bounds of the run.
    ///
    /// This property calculates and returns the width, ascent, descent, and leading of the run.
    ///
    /// - Returns: A tuple containing the ascent, descent, and leading values of the run,
    ///   computed using `CTRunGetTypographicBounds`.
    @inlinable
    public var typographicBounds: TypographicBounds {
        return typographicBounds(for: NSRange())
    }
    
    /// Returns the typographic bounds of the run at the specified range.
    ///
    /// This property calculates and returns the width, ascent, descent, and leading of the run.
    ///
    /// - Returns: A tuple containing the ascent, descent, and leading values of the run,
    ///   computed using `CTRunGetTypographicBounds`.
    @inlinable
    public func typographicBounds(for range: NSRange) -> TypographicBounds {
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
        return (
            width: width,
            ascent: ascent,
            descent: descent,
            leading: leading
        )
    }
}
