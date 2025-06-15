import SwiftUI

@main
struct WatchNotesApp: App {
    @StateObject private var store = NotesStore()

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(store)
                .background(Color.black)
        }
    }
}
