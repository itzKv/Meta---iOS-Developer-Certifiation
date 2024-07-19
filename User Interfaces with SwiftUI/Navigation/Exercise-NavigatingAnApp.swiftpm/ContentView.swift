import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Exercise 1")
                NavigationLink(destination: myTabView()) {
                    Text("Do Something")
                    
                }
                .navigationTitle("Little Lemon")
            }
        }
    }
}
