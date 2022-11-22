#if canImport(UIKit)

import SwiftUI


/// A property wrapper type that shows whether the keyboard is shown or hidden.
@available(iOS 13, *)
@available(tvOS, unavailable)
@available(macOS, unavailable)
@available(watchOS, unavailable)
@propertyWrapper public struct KeyboardState: DynamicProperty {
    @ObservedObject private var observer = KeyboardObserver()
    
    /// Creates a keyboard state.
    @MainActor public init() {}
    
    /// The current state of keyboard visibility.
    @MainActor public var wrappedValue: KeyboardVisibility {
        observer.state
    }
}

#endif
