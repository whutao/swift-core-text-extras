#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

public struct CTRunAttributeName: Hashable {
    
    /// The CoreText ruby annotation name.
    public static let rubyAnnotation = CTRunAttributeName(kCTRubyAnnotationAttributeName)
    
    /// The CoreText font attribute name.
    public static let font = CTRunAttributeName(kCTFontAttributeName)
    
    /// The CoreText kern attribute name.
    public static let kern = CTRunAttributeName(kCTKernAttributeName)
    
    /// The CoreText ligature attribute name.
    public static let ligature = CTRunAttributeName(kCTLigatureAttributeName)
    
    /// The CoreText paragraph style attribute name.
    public static let paragraphStyle = CTRunAttributeName(kCTParagraphStyleAttributeName)
    
    /// The CoreText stroke width attribute name.
    public static let strokeWidth = CTRunAttributeName(kCTStrokeWidthAttributeName)
    
    /// The CoreText stroke color attribute name.
    public static let strokeColor = CTRunAttributeName(kCTStrokeColorAttributeName)
    
    /// The CoreText superscript attribute name.
    public static let superscript = CTRunAttributeName(kCTSuperscriptAttributeName)
    
    /// The CoreText underline color attribute name.
    public static let underlineColor = CTRunAttributeName(kCTUnderlineColorAttributeName)
    
    /// The CoreText underline style attribute name.
    public static let underlineStyle = CTRunAttributeName(kCTUnderlineStyleAttributeName)
    
    /// The CoreText vertical forms attribute name.
    public static let verticalForms = CTRunAttributeName(kCTVerticalFormsAttributeName)
    
    /// The CoreText glyph info attribute name.
    public static let glyphInfo = CTRunAttributeName(kCTGlyphInfoAttributeName)
    
    /// The CoreText run delegate attribute name.
    public static let runDelegate = CTRunAttributeName(kCTRunDelegateAttributeName)
    
    /// The CoreText baseline offset attribute name.
    public static let baselineOffset = CTRunAttributeName(kCTBaselineOffsetAttributeName)
    
    /// The CoreText tracking attribute name.
    public static let trackingAttributeName = CTRunAttributeName(kCTTrackingAttributeName)
    
    /// The CoreText foreground color attribute name.
    public static let foregroundColor = CTRunAttributeName(kCTForegroundColorAttributeName)
    
    /// The CoreText foreground color from context attribute name.
    public static let foregroundColorFromContext = CTRunAttributeName(kCTForegroundColorFromContextAttributeName)
    
    private let rawValue: String
    
    @usableFromInline
    init(_ string: String) {
        self.rawValue = string
    }
    
    @usableFromInline
    init(_ cfString: CFString) {
        self.rawValue = cfString as String
    }
}
#endif
