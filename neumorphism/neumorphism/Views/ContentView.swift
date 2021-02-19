//
//  ContentView.swift
//  neumorphism
//
//  Created by Pere Almendro on 14/2/21.
//

import SwiftUI

enum TabItem {
    case pencilTip
    case gear
    case person
    case alarm
}

struct ContentView: View {
    @State var selectedItem = TabItem.pencilTip
    private let tabBarBackgroundColor = Color.lairBackgroundGray

    var body: some View {
        VStack {
            ZStack {                
                if self.selectedItem == .pencilTip {
                    PencilTipView()
                    AlarmView().hidden()
                    SettingsView().hidden()
                    ProfileView().hidden()

                } else if self.selectedItem == .alarm {
                    PencilTipView().hidden()
                    AlarmView()
                    SettingsView().hidden()
                    ProfileView().hidden()

                } else if self.selectedItem == .gear {
                    PencilTipView().hidden()
                    AlarmView().hidden()
                    SettingsView()
                    ProfileView().hidden()

                } else if self.selectedItem == .person {
                    PencilTipView().hidden()
                    AlarmView().hidden()
                    SettingsView().hidden()
                    ProfileView()
                }
            }

            TabBarView(
                selectedItem: self.$selectedItem,
                tabItems: buildTabItems())
                .background(tabBarBackgroundColor)
        }
        .edgesIgnoringSafeArea(.bottom)
    }

    func buildTabItems() -> [TabItemView] {
        return [ TabItemView(selectedItem: self.$selectedItem,
                             icon: "pencil.tip",
                             backgroundColor: tabBarBackgroundColor,
                             tabItem: .pencilTip),
                 TabItemView(selectedItem: self.$selectedItem,
                             icon: "alarm",
                             backgroundColor: tabBarBackgroundColor,
                             tabItem: .alarm),
                 TabItemView(selectedItem: self.$selectedItem,
                             icon: "gear",
                             backgroundColor: tabBarBackgroundColor,
                             tabItem: .gear),
                 TabItemView(selectedItem: self.$selectedItem,
                             icon: "person",
                             backgroundColor: tabBarBackgroundColor,
                             tabItem: .person) ]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView.instantiate()
    }
}

extension ContentView {
    static func instantiate() -> ContentView {
        ContentView()
    }
}
