import CoreText
import Foundation

extension CTRun {
    
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
