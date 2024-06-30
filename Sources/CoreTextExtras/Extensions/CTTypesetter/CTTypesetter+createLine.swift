import CoreText
import Foundation

extension CTTypesetter {
    
    /// Creates a `CTLine` for the specified string range, optionally applying an offset.
    ///
    /// - Parameters:
    ///   - range: The `NSRange` over the string used to create the line. Defaults to the full string range.
    ///   - offset: An optional `CGFloat` horizontal offset.
    ///     If provided, calls `CTTypesetterCreateLineWithOffset`; otherwise calls `CTTypesetterCreateLine`.
    /// - Returns: A `CTLine` instance laid out for the specified range and offset.
    @inlinable
    public func createLine(range: NSRange = NSRange(), offset: CGFloat? = nil) -> CTLine {
        if let offset {
            return CTTypesetterCreateLineWithOffset(self, CFRange(range), offset)
        } else {
            return CTTypesetterCreateLine(self, CFRange(range))
        }
    }
}
