import CoreText

/// Describes a single variation axis supported by a variable font.
public struct CTFontVariationAxis: Hashable, Sendable {
    
    /// Unique axis identifier (FourCC code).
    public let identifier: Identifier
    
    /// Localized name of the axis, if available.
    public let name: String?
    
    /// The font’s default value for this axis.
    public let defaultValue: CGFloat
    
    /// The minimum supported value for this axis.
    public let minValue: CGFloat
    
    /// The maximum supported value for this axis.
    public let maxValue: CGFloat
    
    /// Whether the axis is hidden from typical UI.
    public let isHidden: Bool
    
    /// Creates a new variation axis descriptor.
    public init(
        identifier: Identifier,
        name: String?,
        defaultValue: CGFloat,
        minValue: CGFloat,
        maxValue: CGFloat,
        isHidden: Bool
    ) {
        self.identifier = identifier
        self.name = name
        self.defaultValue = defaultValue
        self.minValue = minValue
        self.maxValue = maxValue
        self.isHidden = isHidden
    }
}
