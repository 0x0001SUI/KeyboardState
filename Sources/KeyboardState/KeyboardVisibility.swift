#if canImport(UIKit)

/// The visibility of the keyboard.
///
/// Use the ``KeyboardState/KeyboardState`` property wrapper
/// to get the current keyboard visibility state.
@available(iOS 13, *)
@available(tvOS, unavailable)
@available(macOS, unavailable)
@available(watchOS, unavailable)
@frozen public enum KeyboardVisibility {
    /// Indicates that the keyboard is currently visible
    case visible
    /// Indicates that the keyboard is currently hidden
    case hidden
}

#endif
