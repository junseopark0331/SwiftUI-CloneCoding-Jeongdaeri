import SwiftUI

struct ContentView: View {
    
    // State 값의 변화를 감지 -> 뷰에 적용
    @State
    private var isActivated: Bool = false
    
    // 몸체
    var body: some View {
        
        NavigationView {
            VStack {
                HStack {
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                    MyVstackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50.0 : 10.0)
                //
                .background(isActivated ? Color.yellow : Color.black)
                
                // 탭 제스처 추가
                .onTapGesture {
                    print("HStack이 클릭되었다.")
                    
                    // 애니메이션과 함께
                    withAnimation{
                        // toggle() true 이면 false로 false 이면 true로
                        self.isActivated.toggle()
                    }
                } // HStack
                
                NavigationLink(destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .font(.system(size: 40))
                        .fontWeight(.bold)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(Color.white)
                        .cornerRadius(30)
                }
                // 네비게이션 버튼(링크)
            }
            
        } // NavigationView
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
