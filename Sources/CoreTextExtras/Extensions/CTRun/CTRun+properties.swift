#if canImport(CoreText)
import CoreText
import Foundation

extension CTRun {
    
    /// Returns the typographic bounds of the run.
    ///
    /// This property calculates and returns the width, ascent, descent, and leading of the line.
    ///
    /// - Returns: A tuple containing the ascent, descent, and leading values of the run,
    ///   computed using `CTRunGetTypographicBounds`.
    @inlinable
    public var typographicBounds: (width: CGFloat, ascent: CGFloat, descent: CGFloat, leading: CGFloat) {
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
    
    /// Returns the attributes of the run.
    ///
    /// - Complexity: *O(1)* as the internal function `CTRunGetAttributes`
    ///   directly retrieves the attributes, which involves a simple lookup operation
    ///   that completes in constant time.
    ///
    /// - Returns: A dictionary of `CTRunAttributeName` keys and their corresponding values,
    ///   computed using `CTRunGetAttributes`.
    @inlinable
    public var attributes: [CTRunAttributeName: Any] {
        guard let dictionary = (CTRunGetAttributes(self) as NSDictionary) as? [String: Any] else {
            return [:]
        }
        return dictionary.reduce(into: [:]) { (partialResult, pair: (key: String, value: Any)) in
            partialResult[CTRunAttributeName(pair.key)] = pair.value
        }
    }
}
#endif
