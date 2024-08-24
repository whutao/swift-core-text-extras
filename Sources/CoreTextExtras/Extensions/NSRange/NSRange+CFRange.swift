#if canImport(Foundation)
import Foundation

extension NSRange {
    
    @usableFromInline
    init(_ cfRange: CFRange) {
        let location = (cfRange.location == kCFNotFound ? NSNotFound : cfRange.location)
        let length = cfRange.length
        self = NSMakeRange(location, length)
    }
    
    @usableFromInline
    var cfRange: CFRange {
        let location: CFIndex = (location == NSNotFound ? kCFNotFound : location)
        return CFRange(location: location, length: length)
    }
}
#endif
