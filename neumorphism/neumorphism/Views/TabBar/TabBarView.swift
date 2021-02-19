import SwiftUI

// MARK:  - TabBarView

struct TabBarView: View {
    @Binding var selectedItem: TabItem
    
    let tabItems: [TabItemView]
    var body: some View {
        HStack {
            ForEach(tabItems, id: \.uuid) { item in
                Spacer()
                item
                Spacer()
            }
        }
        .padding(.top, 11)
        .padding(.bottom, 22)
    }
}
