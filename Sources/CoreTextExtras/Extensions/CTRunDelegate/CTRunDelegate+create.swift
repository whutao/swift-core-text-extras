import CoreText

extension CTRunDelegate {
    
    /// Creates an immutable instance of a run delegate
    /// with provided autoclosures for ascent, descent and width.
    public static func create(
        ascent: @escaping @autoclosure () -> CGFloat,
        descent: @escaping @autoclosure () -> CGFloat,
        width: @escaping @autoclosure () -> CGFloat
    ) -> CTRunDelegate? {
        let callbacksHolder = CTRunDelegateCallbacksHolder(ascent: ascent, descent: descent, width: width)
        var callbacks = CTRunDelegateCallbacks(
            version: kCTRunDelegateVersion1,
            dealloc: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).release()
            },
            getAscent: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).takeUnretainedValue().ascent()
            },
            getDescent: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).takeUnretainedValue().descent()
            },
            getWidth: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).takeUnretainedValue().width()
            }
        )
        return CTRunDelegateCreate(&callbacks, Unmanaged.passRetained(callbacksHolder).toOpaque())
    }
}

private final class CTRunDelegateCallbacksHolder {
    
    let ascent: () -> CGFloat
    let descent: () -> CGFloat
    let width: () -> CGFloat
    
    init(
        ascent: @escaping () -> CGFloat,
        descent: @escaping () -> CGFloat,
        width: @escaping () -> CGFloat
    ) {
        self.ascent = ascent
        self.descent = descent
        self.width = width
    }
}
