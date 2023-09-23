import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            MyVstackView()
            MyVstackView()
            MyVstackView()
        }
        .padding(10.0)
        .background(Color.yellow)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
