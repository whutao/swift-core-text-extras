import CoreText

extension CTLine {
    
    /// Gets the pen offset required to draw flush text.
    @inlinable
    public func penOffset(flushFactor: CGFloat, width flushWidth: Double) -> Double {
        return CTLineGetPenOffsetForFlush(self, flushFactor, flushWidth)
    }
}
