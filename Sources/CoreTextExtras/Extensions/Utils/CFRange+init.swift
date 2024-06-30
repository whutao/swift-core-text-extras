import Foundation

extension CFRange {
    
    @usableFromInline
    init(_ nsRange: NSRange) {
        self.init(
            location: nsRange.location == NSNotFound ? kCFNotFound : nsRange.location,
            length: nsRange.length
        )
    }
}
