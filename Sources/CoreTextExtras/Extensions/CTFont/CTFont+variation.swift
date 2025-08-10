import CoreText
import Foundation

extension CTFont {
    
    /// A dictionary of the font’s current variation axis values.
    ///
    /// Keys are axis identifiers, values are the current settings.
    /// Returns an empty dictionary if the font has no variation axes.
    @inlinable
    public var variation: [CTFontVariationAxis.Identifier: CGFloat] {
        guard let rawVariation = CTFontCopyVariation(self) as? [CFNumber: CGFloat] else {
            return [:]
        }
        var variation: [CTFontVariationAxis.Identifier: CGFloat] = [:]
        for (identifier, value) in rawVariation {
            variation[CTFontVariationAxis.Identifier(rawValue: (identifier as NSNumber).uint32Value)] = value
        }
        return variation
    }
    
    /// An array of all variation axes supported by the font.
    ///
    /// Includes identifier, localized name, default, minimum, and maximum values.
    /// Returns an empty array if the font has no variation axes.
    @inlinable
    public var variationAxes: [CTFontVariationAxis] {
        return Array(CTFontCopyVariationAxes(self))
            .map(Dictionary.init(_:))
            .compactMap { axisParameters in
                guard
                    let rawIdentifier = (axisParameters[kCTFontVariationAxisIdentifierKey] as? NSNumber)?.uint32Value,
                    let defaultValue = (axisParameters[kCTFontVariationAxisDefaultValueKey] as? NSNumber)?.doubleValue,
                    let minValue = (axisParameters[kCTFontVariationAxisMinimumValueKey] as? NSNumber)?.doubleValue,
                    let maxValue = (axisParameters[kCTFontVariationAxisMaximumValueKey] as? NSNumber)?.doubleValue
                else {
                    return nil
                }
                let identifier = CTFontVariationAxis.Identifier(rawValue: rawIdentifier)
                let name = axisParameters[kCTFontVariationAxisNameKey] as? String
                let isHidden = (axisParameters[kCTFontVariationAxisHiddenKey] as? NSNumber)?.boolValue ?? false
                return CTFontVariationAxis(
                    identifier: identifier,
                    name: name,
                    defaultValue: defaultValue,
                    minValue: minValue,
                    maxValue: maxValue,
                    isHidden: isHidden
                )
            }
    }
}
