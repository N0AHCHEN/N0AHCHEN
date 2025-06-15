import Foundation
import SwiftUI

struct Note: Identifiable, Codable {
    var id: UUID = UUID()
    var text: String
}

class NotesStore: ObservableObject {
    @Published var notes: [Note]
    @Published var fontSize: CGFloat = 16
    @Published var brightness: Double = 1.0

    init() {
        self.notes = [
            Note(text: "Example note 1"),
            Note(text: "Example note 2")
        ]
    }
}
