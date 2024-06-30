import CoreFoundation

extension Dictionary<CFString, Any> {
    
    @usableFromInline
    init(_ cfDictionary: CFDictionary?) {
        self = cfDictionary as? [CFString: Any] ?? [:]
    }
}
