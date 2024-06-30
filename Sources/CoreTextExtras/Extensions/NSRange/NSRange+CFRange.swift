import Foundation

extension NSRange {
    
    @usableFromInline
    init(_ cfRange: CFRange) {
        let location = (cfRange.location == kCFNotFound ? NSNotFound : cfRange.location)
        let length = cfRange.length
        self = NSMakeRange(location, length)
    }
}
