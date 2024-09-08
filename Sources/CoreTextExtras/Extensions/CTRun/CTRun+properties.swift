#if canImport(CoreText)
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
        var ascent: CGFloat = 0
        var descent: CGFloat = 0
        var leading: CGFloat = 0
        let width = CGFloat(CTRunGetTypographicBounds(self, CFRange(), &ascent, &descent, &leading))
        return (
            width: width,
            ascent: ascent,
            descent: descent,
            leading: leading
        )
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
        let width = CGFloat(
            CTRunGetTypographicBounds(
                self,
                range.cfRange,
                &ascent,
                &descent,
                &leading
            )
        )
        return (
            width: width,
            ascent: ascent,
            descent: descent,
            leading: leading
        )
    }
    
    /// Returns the attributes of the run.
    ///
    /// - Complexity: *O(1)* as the internal function `CTRunGetAttributes`
    ///   directly retrieves the attributes, which involves a simple lookup operation
    ///   that completes in constant time.
    ///
    /// - Returns: A dictionary of `NSAttributedString.Key` keys and their corresponding values,
    ///   computed using `CTRunGetAttributes`.
    @inlinable
    public var attributes: [NSAttributedString.Key: Any] {
        guard let dictionary = (CTRunGetAttributes(self) as NSDictionary) as? [String: Any] else {
            return [:]
        }
        return dictionary.reduce(into: [:]) { (partialResult, pair: (key: String, value: Any)) in
            partialResult[NSAttributedString.Key(pair.key)] = pair.value
        }
    }
}
#endif
