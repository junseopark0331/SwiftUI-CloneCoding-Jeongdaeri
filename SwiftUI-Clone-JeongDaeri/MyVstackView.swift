import SwiftUI

struct MyVstackView: View {
    var body: some View {
        VStack {
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 70))
            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 70))
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 70))
        }
        .background(Color.red)
    }
}

// 보여주는 용도
struct MyVstackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVstackView()
    }
}
