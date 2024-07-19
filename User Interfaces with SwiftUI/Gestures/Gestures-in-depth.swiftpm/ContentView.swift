import SwiftUI

struct ContentView: View {
    @State private var offsetValue = CGSize.zero
    var body: some View {
        RotationGestureView()
    }
}
