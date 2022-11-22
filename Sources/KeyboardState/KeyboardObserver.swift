#if canImport(UIKit)

import SwiftUI
import Combine


@available(iOS 13, *)
@available(tvOS, unavailable)
@available(macOS, unavailable)
@available(watchOS, unavailable)
@MainActor internal final class KeyboardObserver: ObservableObject {
    
    @Published private(set) var state: KeyboardVisibility = .hidden
        
    init() {
        // When the keyboard is shown or hidden, iOS sends out the
        // following notifications:
        //
        // - UIResponder.keyboardDidShowNotification
        // - UIResponder.keyboardDidHideNotification

        NotificationCenter.default
            .publisher(for: UIResponder.keyboardDidShowNotification)
            .receive(on: RunLoop.main)
            .sink { [weak self] _ in
                self?.state = .visible
            }
            .store(in: &cancellable)
        
        NotificationCenter.default
            .publisher(for: UIResponder.keyboardDidHideNotification)
            .receive(on: RunLoop.main)
            .sink { [weak self] _ in
                self?.state = .hidden
            }
            .store(in: &cancellable)
    }
    
    private var cancellable = Set<AnyCancellable>()
}

#endif
