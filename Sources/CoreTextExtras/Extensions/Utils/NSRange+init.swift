import Foundation

extension NSRange {
    
    @usableFromInline
    init(_ cfRange: CFRange) {
        self = NSMakeRange(
            cfRange.location == kCFNotFound ? NSNotFound : cfRange.location,
            cfRange.length
        )
    }
}
