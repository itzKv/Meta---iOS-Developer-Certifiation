import SwiftUI

struct ContentView: View {
    @State var inputValue: String = ""
    var body: some View {
        ZStack(alignment: .leading) {
            Circle()
                .foregroundColor(.gray)
            Circle()
                .scale(x: 0.75, y: 0.75)
                .foregroundColor(.brown)
            Circle()
                .scale(x: 0.5, y: 0.5)
                .foregroundColor(.black)
            VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Hello World")
                    .padding()
                HStack (spacing: 20) {
                    Button("One") {}
                    Button("Two") {}
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
            }
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
    }
}
