# KeyboardState

```swift
struct NoteEditor: View {
    @ObservedObject var note: Note
                    
    @KeyboardState private var keyboardState: KeyboardVisibility
    @FocusState private var isFocused: Bool

    var body: some View {
        TextEditor(text: $note.text)
            .focused($isFocused)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    if keyboardState == .visible {
                        Button {
                            isFocused = false
                        } label: {
                            Label("Hide Keyboard", systemImage: "keyboard.chevron.compact.down")
                        }
                    }
                }
            }
    }
}

```
