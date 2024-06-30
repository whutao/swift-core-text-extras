import CoreFoundation

extension Array {
    
    @usableFromInline
    init(_ cfArray: CFArray?) {
        self = cfArray as? [Element] ?? []
    }
}
