import SwiftUI

struct BrightnessSlider: View {
    @EnvironmentObject var store: NotesStore

    var body: some View {
        HStack {
            Image(systemName: "sun.min")
            Slider(value: $store.brightness, in: 0.1...1.0)
            Image(systemName: "sun.max")
        }
        .padding()
    }
}

struct BrightnessSlider_Previews: PreviewProvider {
    static var previews: some View {
        BrightnessSlider()
            .environmentObject(NotesStore())
    }
}
