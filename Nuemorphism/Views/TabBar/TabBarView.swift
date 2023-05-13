import SwiftUI

struct TabBarView: View {
    @Binding var selectedItem: SelectedItem
    
    var tabBarItems: [TabBarItem]
    
    var body: some View {
        HStack {
            ForEach(tabBarItems) { item in
                HStack {
                    Spacer()
                    item
                    Spacer()
                }
            }
        }
        .padding(20)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView(selectedItem: .constant(.lair), tabBarItems: Data.tabBarItems)
    }
}
