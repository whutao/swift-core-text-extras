import CoreText
import Foundation

public struct CTRunAttributeName: Hashable {
    
    /// The Core Text font attribute name.
    public static let font = CTRunAttributeName(kCTFontAttributeName)
    
    /// The Core Text kern attribute name.
    public static let kern = CTRunAttributeName(kCTKernAttributeName)
    
    /// The Core Text ligature attribute name.
    public static let ligature = CTRunAttributeName(kCTLigatureAttributeName)
    
    /// The Core Text paragraph style attribute name.
    public static let paragraphStyle = CTRunAttributeName(kCTParagraphStyleAttributeName)
    
    /// The Core Text stroke width attribute name.
    public static let strokeWidth = CTRunAttributeName(kCTStrokeWidthAttributeName)
    
    /// The Core Text stroke color attribute name.
    public static let strokeColor = CTRunAttributeName(kCTStrokeColorAttributeName)
    
    /// The Core Text superscript attribute name.
    public static let superscript = CTRunAttributeName(kCTSuperscriptAttributeName)
    
    /// The Core Text underline color attribute name.
    public static let underlineColor = CTRunAttributeName(kCTUnderlineColorAttributeName)
    
    /// The Core Text underline style attribute name.
    public static let underlineStyle = CTRunAttributeName(kCTUnderlineStyleAttributeName)
    
    /// The Core Text vertical forms attribute name.
    public static let verticalForms = CTRunAttributeName(kCTVerticalFormsAttributeName)
    
    /// The Core Text glyph info attribute name.
    public static let glyphInfo = CTRunAttributeName(kCTGlyphInfoAttributeName)
    
    /// The Core Text run delegate attribute name.
    public static let runDelegate = CTRunAttributeName(kCTRunDelegateAttributeName)
    
    /// The Core Text baseline offset attribute name.
    public static let baselineOffset = CTRunAttributeName(kCTBaselineOffsetAttributeName)
    
    /// The Core Text tracking attribute name.
    public static let trackingAttributeName = CTRunAttributeName(kCTTrackingAttributeName)
    
    /// The Core Text foreground color attribute name.
    public static let foregroundColor = CTRunAttributeName(kCTForegroundColorAttributeName)
    
    /// The Core Text foreground color from context attribute name.
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
