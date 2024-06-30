import Foundation

extension NSRange {
    
    @usableFromInline
    init(_ cfRange: CFRange) {
        self = NSMakeRange(
            cfRange.location == kCFNotFound ? NSNotFound : cfRange.location,
            cfRange.length
        )
    }
    
    @usableFromInline
    var cfRange: CFRange {
        return CFRange(
            location: location == NSNotFound ? kCFNotFound : location,
            length: length
        )
    }
}
