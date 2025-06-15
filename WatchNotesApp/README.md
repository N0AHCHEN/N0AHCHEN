# WatchNotesApp

This is a simple skeleton for a notes app targeting watchOS. It uses SwiftUI and stores notes in memory. Pages can be flipped by swiping left or right. Font size and brightness can be adjusted using onscreen controls. The interface defaults to a dark background.

Gesture-based "muscle detection" (e.g. clench or pinch) is not exposed through public watchOS APIs. This example uses standard gesture recognizers instead. On a real device, you could map system AssistiveTouch gestures to the swipe action via accessibility settings.

To build, open the project folder with Xcode and run it on the latest watchOS simulator or a real device.
