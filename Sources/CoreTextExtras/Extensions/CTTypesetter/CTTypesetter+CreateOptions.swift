import CoreText

extension CTTypesetter {
    
    /// A type‐safe wrapper for the options to pass when creating `CTTypesetter`.
    ///
    /// The properties map directly to the following CoreText keys:
    /// - `allowUnboundedLayout` with `kCTTypesetterOptionAllowUnboundedLayout`
    /// - `forcedEmbeddingLevel` with `kCTTypesetterOptionForcedEmbeddingLevel`
    public struct CreateOptions {
        
        public let allowUnboundedLayout: Bool?
        
        public let forcedEmbeddingLevel: Int?
        
        /// Creates an options instance with the given values.
        public init(
            allowUnboundedLayout: Bool? = nil,
            forcedEmbeddingLevel: Int? = nil
        ) {
            self.allowUnboundedLayout = allowUnboundedLayout
            self.forcedEmbeddingLevel = forcedEmbeddingLevel
        }
        
        @usableFromInline
        var asCFDictionary: CFDictionary {
            var options: [CFString: Any] = [:]
            options[kCTTypesetterOptionAllowUnboundedLayout] = allowUnboundedLayout
            options[kCTTypesetterOptionForcedEmbeddingLevel] = forcedEmbeddingLevel
            return options as CFDictionary
        }
    }
}
