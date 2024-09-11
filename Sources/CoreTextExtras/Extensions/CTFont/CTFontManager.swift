#if canImport(CoreText) && canImport(Foundation)
import CoreText
import Foundation

/// A utility for managing fonts in the CoreText framework.
public enum CTFontManager {
    
    /// Returns an array of available font family names.
    ///
    /// - Returns: An array of `String` values representing the available font family names,
    ///   computed using `CTFontManagerCopyAvailableFontFamilyNames`.
    @inlinable
    public static func availableFontFamilyNames() -> [String] {
        return CTFontManagerCopyAvailableFontFamilyNames() as? [String] ?? []
    }
    
    /// Returns an array of available PostScript names.
    ///
    /// - Returns: An array of `String` values representing the available PostScript names,
    ///   computed using `CTFontManagerCopyAvailablePostScriptNames`.
    @inlinable
    public static func availablePostScriptNames() -> [String] {
        return CTFontManagerCopyAvailablePostScriptNames() as? [String] ?? []
    }
    
    /// Registers fonts from the specified URL.
    ///
    /// This method registers fonts from the provided URL with the specified scope.
    ///
    /// - Parameters:
    ///   - fontURL: The `URL` specifying the location of the fonts to register.
    ///   - scope: The scope within which to register the fonts. The default value is `.user`.
    ///
    /// - Throws: An error of type `CFError` if the registration fails.
    ///
    /// - Note: This method uses `CTFontManagerRegisterFontsForURL` to perform the registration.
    @inlinable
    public static func registerFonts(fontURL: URL, scope: CTFontManagerScope = .user) throws {
        guard let error = CFErrorCreate(nil, kCFErrorDomainPOSIX, 0, nil) else {
            return
        }
        var unmanagedError: Unmanaged<CFError>? = Unmanaged.passRetained(error)
        CTFontManagerRegisterFontsForURL(fontURL as CFURL, scope, &unmanagedError)
        if let error = unmanagedError {
            throw error.takeRetainedValue()
        }
    }
    
    /// Unregisters fonts from the specified URL.
    ///
    /// This method unregisters fonts from the provided URL with the specified scope.
    ///
    /// - Parameters:
    ///   - fontURL: The `URL` specifying the location of the fonts to unregister.
    ///   - scope: The scope within which to unregister the fonts. The default value is `.user`.
    ///
    /// - Throws: An error of type `CFError` if the unregistration fails.
    ///
    /// - Note: This method uses `CTFontManagerUnregisterFontsForURL` to perform the unregistration.
    @inlinable
    public static func unregisterFonts(fontURL: URL, scope: CTFontManagerScope = .user) throws {
        guard let error = CFErrorCreate(nil, kCFErrorDomainPOSIX, 0, nil) else {
            return
        }
        var unmanagedError: Unmanaged<CFError>? = Unmanaged.passRetained(error)
        CTFontManagerUnregisterFontsForURL(fontURL as CFURL, scope, &unmanagedError)
        if let error = unmanagedError {
            throw error.takeRetainedValue()
        }
    }
}
#endif
