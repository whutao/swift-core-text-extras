import CoreText

extension CTFramesetter {
    
    /// Creates a text frame within the specified rectangle.
    ///
    /// This method creates a `CTFrame` object that represents the text frame within the given rectangle.
    ///
    /// - Parameters:
    ///   - rect: The `CGRect` that defines the bounding box for the text frame.
    ///
    /// - Returns: A `CTFrame` object representing the text frame within the specified rectangle,
    ///   computed using `CTFramesetterCreateFrame`.
    @inlinable
    public func createFrame(with rect: CGRect) -> CTFrame {
        return createFrame(with: CGPath(rect: rect, transform: nil))
    }
    
    /// Creates a text frame within the specified path.
    ///
    /// This method creates a `CTFrame` object that represents the text frame within the given path.
    ///
    /// - Parameters:
    ///   - path: The `CGPath` that defines the shape and area for the text frame.
    ///
    /// - Returns: A `CTFrame` object representing the text frame within the specified path,
    ///   computed using `CTFramesetterCreateFrame`.
    @inlinable
    public func createFrame(with path: CGPath) -> CTFrame {
        return CTFramesetterCreateFrame(self, CFRange(), path, nil)
    }
}
