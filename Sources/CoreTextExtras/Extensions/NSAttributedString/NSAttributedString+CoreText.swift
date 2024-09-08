#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

extension NSAttributedString.Key {
    
    /// The CoreText ruby annotation attribute.
    ///
    /// The value associated with this attribute must be a `CTRubyAnnotation` object.
    public static let rubyAnnotation = NSAttributedString.Key(kCTRubyAnnotationAttributeName as String)
    
    /// The CoreText kern attribute.
    ///
    /// The value associated with this attribute must be a `CFNumber` float.
    public static let kern = NSAttributedString.Key(kCTKernAttributeName as String)
    
    /// The CoreText frame progression attribute.
    ///
    /// The value associated with this attribute must
    /// be a `CFNumber` containing `CTFrameProgression` constant.
    public static let frameProgression = NSAttributedString.Key(kCTFrameProgressionAttributeName as String)
    
    /// The CoreText ligature attribute.
    ///
    /// The value associated with this attribute must be a `CFNumber` object.
    public static let ligature = NSAttributedString.Key(kCTLigatureAttributeName as String)
    
    /// The CoreText vertical forms attribute.
    ///
    /// The value associated with this attribute must be a `CFBoolean` object.
    public static let verticalForms = NSAttributedString.Key(kCTVerticalFormsAttributeName as String)
    
    /// The CoreText glyph info attribute.
    ///
    /// The value associated with this attribute must be a `CTGlyphInfo` object.
    public static let glyphInfo = NSAttributedString.Key(kCTGlyphInfoAttributeName as String)
    
    /// The CoreText run delegate attribute.
    ///
    /// The value associated with this attribute must be a `CTRunDelegate` object.
    public static let runDelegate = NSAttributedString.Key(kCTRunDelegateAttributeName as String)
}
#endif
