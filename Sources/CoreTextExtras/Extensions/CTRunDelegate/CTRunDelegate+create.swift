import CoreText

extension CTRunDelegate {
    
    /// Creates an immutable instance of a run delegate with provided  ascent, descent and width.
    public static func create(
        ascent: CGFloat,
        descent: CGFloat,
        width: CGFloat
    ) -> CTRunDelegate? {
        let callbacksHolder = CTRunDelegateCallbacksHolder(ascent: ascent, descent: descent, width: width)
        var callbacks = CTRunDelegateCallbacks(
            version: kCTRunDelegateVersion1,
            dealloc: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).release()
            },
            getAscent: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).takeUnretainedValue().ascent
            },
            getDescent: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).takeUnretainedValue().descent
            },
            getWidth: { pointer in
                Unmanaged<CTRunDelegateCallbacksHolder>.fromOpaque(pointer).takeUnretainedValue().width
            }
        )
        return CTRunDelegateCreate(&callbacks, Unmanaged.passRetained(callbacksHolder).toOpaque())
    }
}

private final class CTRunDelegateCallbacksHolder {
    
    let ascent: CGFloat
    let descent: CGFloat
    let width: CGFloat
    
    init(ascent: CGFloat, descent: CGFloat, width: CGFloat) {
        self.ascent = ascent
        self.descent = descent
        self.width = width
    }
}
