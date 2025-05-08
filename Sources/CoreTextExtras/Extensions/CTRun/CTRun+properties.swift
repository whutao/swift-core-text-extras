import CoreText
import Foundation

extension CTRun {
    
    /// Returns the attributes of the run.
    ///
    /// - Returns: A dictionary of string keys and their corresponding values,
    ///   computed using `CTRunGetAttributes`.
    @inlinable
    public var attributes: [CFString: Any] {
        return Dictionary(CTRunGetAttributes(self))
    }
    
    /// Returns the number of glyphs in the run.
    ///
    /// - Returns: The `CFIndex` value representing the number of glyphs
    ///   in the run, computed using `CTRunGetGlyphCount`.
    @inlinable
    public var glyphCount: CFIndex {
        return CTRunGetGlyphCount(self)
    }
    
    /// Gets the range of characters that originally spawned the glyphs in the run.
    ///
    /// - Returns: The range of characters that originally
    ///   spawned the glyphs, of if run is invalid, an empty range.
    @inlinable
    public var stringRange: NSRange {
        return NSRange(CTRunGetStringRange(self))
    }
    
    /// The text matrix for this run, obtained via `CTRunGetTextMatrix`.
    @inlinable
    public var textMatrix: CGAffineTransform {
        return CTRunGetTextMatrix(self)
    }
}
