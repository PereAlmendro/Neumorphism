//
//  SettingsView.swift
//  neumorphism
//
//  Created by Pere Almendro on 15/2/21.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        VStack {
            Spacer()
            NeumorphicShape(isPressed: false,
                            systemIcon: "gear",
                            size: 80,
                            backgroundColor: .white,
                            bottomTrailingShadowColor: Color.gray.opacity(0.6),
                            topLeadingShadowColor: Color.white,
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                RoundedRectangle(cornerRadius: 20)
            }
            Spacer()

            NeumorphicShape(isPressed: true,
                            systemIcon: "gear",
                            size: 80,
                            backgroundColor: .white,
                            bottomTrailingShadowColor: Color.gray.opacity(0.6),
                            topLeadingShadowColor: Color.white,
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                RoundedRectangle(cornerRadius: 20)
            }

            Spacer()
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
