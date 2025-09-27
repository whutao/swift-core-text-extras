import CoreText
import Foundation

/// A utility for managing fonts in the CoreText framework.
public enum CTFontManager {
    
    /// A notification posted when the system’s registered fonts list changes.
    ///
    /// CoreText posts this notification (named `kCTFontManagerRegisteredFontsChangedNotification`)
    /// whenever fonts are added, removed, or otherwise reloaded at runtime.
    /// Observe this on `NotificationCenter.default` to update any font caches,
    /// refresh UI, or re‐layout text after dynamic font registration.
    @inlinable
    public static var registeredFontsChangedNotification: Notification.Name {
        return kCTFontManagerRegisteredFontsChangedNotification as Notification.Name
    }
    
    /// Returns an array of available font family names.
    ///
    /// An array of `String` values representing the available font family names,
    /// computed using `CTFontManagerCopyAvailableFontFamilyNames`.
    @inlinable
    public static var availableFontFamilyNames: [String] {
        return Array(CTFontManagerCopyAvailableFontFamilyNames())
    }
    
    /// Returns an array of available PostScript names.
    ///
    /// An array of `String` values representing the available PostScript names,
    /// computed using `CTFontManagerCopyAvailablePostScriptNames`.
    @inlinable
    public static var availablePostScriptNames: [String] {
        return Array(CTFontManagerCopyAvailablePostScriptNames())
    }
    
    /// Creates a `CTFontDescriptor` from raw font data.
    ///
    /// - Parameter data: A `Data` object containing font data,
    ///   passed to `CTFontManagerCreateFontDescriptorFromData`.
    /// - Returns: A `CTFontDescriptor?` if the data represents a valid font, otherwise `nil`.
    @inlinable
    public static func fontDescriptor(from data: Data) -> CTFontDescriptor? {
        return CTFontManagerCreateFontDescriptorFromData(data as CFData)
    }
    
    /// Creates an array of `CTFontDescriptor` instances from raw font data.
    ///
    /// - Parameter data: A `Data` object containing one or more font resources,
    ///   passed to `CTFontManagerCreateFontDescriptorsFromData`.
    /// - Returns: An array of `CTFontDescriptor` parsed from the provided data.
    @inlinable
    public static func fontDescriptors(from data: Data) -> [CTFontDescriptor] {
        return Array(CTFontManagerCreateFontDescriptorsFromData(data as CFData))
    }
    
    /// Creates an array of `CTFontDescriptor` instances from a font file URL.
    ///
    /// - Parameter url: A `URL` pointing to a font resource file, passed to `CTFontManagerCreateFontDescriptorsFromURL`.
    /// - Returns: An array of `CTFontDescriptor` parsed from the file at the given URL.
    @inlinable
    public static func fontDescriptors(at url: URL) -> [CTFontDescriptor] {
        return Array(CTFontManagerCreateFontDescriptorsFromURL(url as CFURL))
    }
    
    /// Registers fonts from the specified URL.
    ///
    /// This method registers fonts from the provided URL with the specified scope.
    ///
    /// - Parameters:
    ///   - url: The `URL` specifying the location of the fonts to register.
    ///   - scope: The scope within which to register the fonts.
    ///
    /// - Throws: An error of type `CFError` if the registration fails.
    ///
    /// - Note: This method uses `CTFontManagerRegisterFontsForURL` to perform the registration.
    @inlinable
    public static func registerFonts(at url: URL, scope: CTFontManagerScope) throws(CFError) {
        var unmanagedError: Unmanaged<CFError>?
        CTFontManagerRegisterFontsForURL(url as CFURL, scope, &unmanagedError)
        if let unmanagedError {
            throw unmanagedError.takeRetainedValue()
        }
    }
    
    /// Unregisters fonts from the specified URL.
    ///
    /// This method unregisters fonts from the provided URL with the specified scope.
    ///
    /// - Parameters:
    ///   - url: The `URL` specifying the location of the fonts to unregister.
    ///   - scope: The scope within which to unregister the fonts.
    ///
    /// - Throws: An error of type `CFError` if the unregistration fails.
    ///
    /// - Note: This method uses `CTFontManagerUnregisterFontsForURL` to perform the unregistration.
    @inlinable
    public static func unregisterFonts(at url: URL, scope: CTFontManagerScope) throws(CFError) {
        var unmanagedError: Unmanaged<CFError>?
        CTFontManagerUnregisterFontsForURL(url as CFURL, scope, &unmanagedError)
        if let unmanagedError {
            throw unmanagedError.takeRetainedValue()
        }
    }
}
