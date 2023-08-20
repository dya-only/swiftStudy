import SwiftUI

struct ItemView: View {
    var item: Int
    
    var body: some View {
        HStack {
            Text("Item: ")
            
            Text("\(item)")
                .bold()
                .foregroundColor(Color.blue)
        }
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: 0)
    }
}
