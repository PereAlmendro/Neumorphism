//
//  TabBarItemView.swift
//  neumorphism
//
//  Created by Pere Almendro on 14/2/21.
//

import SwiftUI

struct TabItemView: View {
    @Binding var selectedItem: TabItem

    let uuid = UUID()
    let icon: String
    let backgroundColor: Color

    let size: CGFloat = 24
    var tabItem: TabItem
    func isSelected() -> Bool {
        return selectedItem == tabItem
    }

    var body: some View {
        Button(action: {
            self.selectedItem = self.tabItem
        }) {
            NeumorphicShape(isPressed: isSelected(),
                            systemIcon: icon,
                            size: size,
                            backgroundColor: backgroundColor,
                            bottomTrailingShadowColor: Color.lairShadowGray,
                            topLeadingShadowColor: Color.white.opacity(0.7),
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                Circle()
//                Rectangle()
//                RoundedRectangle(cornerRadius: 15)
            }
        }
    }
}
