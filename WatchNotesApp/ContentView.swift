import SwiftUI

struct ContentView: View {
    @EnvironmentObject var store: NotesStore
    @State private var currentIndex: Int = 0

    var body: some View {
        VStack {
            Text(store.notes[currentIndex].text)
                .font(.system(size: store.fontSize))
                .foregroundColor(.white)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Color.black)
                .gesture(
                    DragGesture()
                        .onEnded { value in
                            if value.translation.width < 0 {
                                goToNext()
                            } else if value.translation.width > 0 {
                                goToPrevious()
                            }
                        }
                )

            BrightnessSlider()
            FontSizeStepper()
        }
        .onAppear {
            setBrightness(store.brightness)
        }
        .onChange(of: store.brightness) { newValue in
            setBrightness(newValue)
        }
    }

    private func goToNext() {
        withAnimation {
            currentIndex = min(currentIndex + 1, store.notes.count - 1)
        }
    }

    private func goToPrevious() {
        withAnimation {
            currentIndex = max(currentIndex - 1, 0)
        }
    }

    private func setBrightness(_ value: Double) {
        // `UIScreen` is not available on watchOS. Adjust brightness using system settings.
        // Placeholder to show intention.
    }
}

struct FontSizeStepper: View {
    @EnvironmentObject var store: NotesStore
    var body: some View {
        Stepper("Font", value: $store.fontSize, in: 12...30)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(NotesStore())
    }
}
