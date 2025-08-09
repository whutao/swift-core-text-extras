// https://mike-engel.com/writing/variable-fonts-on-macos-with-swiftui/
import CoreText

extension CTFontVariationAxis {
    
    /// OpenType variable font axis identifiers.
    public struct Identifier:
        CustomStringConvertible,
        CustomDebugStringConvertible,
        Equatable,
        Hashable,
        Identifiable,
        RawRepresentable,
        Sendable
    {
        /// Weight — controls overall stroke thickness.
        ///
        /// For example,  ~100 (Thin) or ~700 (Bold).
        public static let weight = Identifier(rawValue: 0x77676874) // "wght"
        
        /// Width — glyph stretch.
        ///
        /// For example, ~50 (Condensed) or ~200 (Expanded).
        public static let width = Identifier(rawValue: 0x77647468) // "wdth"
        
        /// Slant — shears the upright design without a true italic.
        ///
        /// For example, 0 (upright) or -15 (oblique).
        public static let slant = Identifier(rawValue: 0x736C6E74) // "slnt"
        
        /// Optical size — adjusts letterforms for a given point size.
        ///
        /// For example, ~8 (small text) or ~72 (display).
        public static let opticalSize = Identifier(rawValue: 0x6F70737A) // "opsz"
        
        /// Grade — adjusts stroke darkness without changing width or spacing.
        ///
        /// For example, -200 (lighter) or 200 (darker).
        public static let grade = Identifier(rawValue: 0x47524144) // "GRAD"
        
        /// XTRA — widens or tightens horizontal counters (interior spaces).
        ///
        /// For example, ~400 (tight) or ~600 (open).
        public static let xtra = Identifier(rawValue: 0x58545241) // "XTRA"
        
        /// XOPQ — adjusts thick strokes (stems).
        ///
        /// For example, ~50 (thin stems) or ~200 (thick stems).
        public static let xopq = Identifier(rawValue: 0x584F5051) // "XOPQ"
        
        /// YOPQ — adjusts thin strokes (hairlines/bars).
        ///
        /// For example, ~0 (very thin) or ~100 (very thick).
        public static let yopq = Identifier(rawValue: 0x594F5051) // "YOPQ"
        
        /// YTLC — lowercase height.
        ///
        /// For example, ~400 (short) or ~550 (tall).
        public static let ytlc = Identifier(rawValue: 0x59544C43) // "YTLC"
        
        /// YTUC — uppercase height.
        ///
        /// For example, ~650 (short) or ~750 (tall).
        public static let ytuc = Identifier(rawValue: 0x59545543) // "YTUC"
        
        /// YTAS — ascender height.
        ///
        /// For example, ~700 (low) or ~800 (high).
        public static let ytas = Identifier(rawValue: 0x59544153) // "YTAS"
        
        /// YTDE — descender depth.
        ///
        /// For example, -250 (deep) or -200 (shallow).
        public static let ytde = Identifier(rawValue: 0x59544445) // "YTDE"
        
        /// YTFI — figure (numeral) height.
        ///
        /// For example, ~600 (short) or ~700 (tall).
        public static let ytfi = Identifier(rawValue: 0x59544649) // "YTFI"
        
        // MARK: - RawRepresentable
        
        public let rawValue: FourCharCode
        
        public init(rawValue: FourCharCode) {
            self.rawValue = rawValue
        }
        
        // MARK: - Identifiable
        
        public var id: FourCharCode {
            return rawValue
        }
        
        // MARK: - CustomStringConvertible
        
        public var description: String {
            return rawValue.description
        }
        
        // MARK: - CustomDebugStringConvertible
        
        public var debugDescription: String {
            let bytes: [UInt8] = [
                UInt8((rawValue >> 24) & 0xFF),
                UInt8((rawValue >> 16) & 0xFF),
                UInt8((rawValue >> 8) & 0xFF),
                UInt8(rawValue & 0xFF)
            ]
            return String(bytes: bytes, encoding: .ascii)!
        }
    }
}
