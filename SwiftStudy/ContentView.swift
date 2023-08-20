import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Image(systemName: "sun.min")
                    .resizable()
                    .frame(width: 40, height: 40)
                    .foregroundColor(.accentColor)
                Text("Hello, world!")
                    .font(.system(size: 20))
                    .padding([.bottom], 20)
                
                NavigationLink("Next") { NextView() }
                    .padding([.bottom], 20)
                
                List {
                    NavigationLink("Element 1", value: 1)
                    NavigationLink("Element 2", value: 2)
                    NavigationLink("Element 3", value: 3)
                    NavigationLink("Element 4", value: 4)
                    NavigationLink("Element 5", value: 5)
                    NavigationLink("Element 6", value: 6)
                }
                .cornerRadius(20)
                .frame(width: 300, height: 200)
                .navigationDestination(for: Int.self) { number in
                    ItemView(item: number)
                }
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
 
