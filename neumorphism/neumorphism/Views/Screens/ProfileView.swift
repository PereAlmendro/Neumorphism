//
//  ProfileView.swift
//  neumorphism
//
//  Created by Pere Almendro on 15/2/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack {
            Spacer()
            NeumorphicShape(isPressed: false,
                            systemIcon: "person",
                            size: 80,
                            backgroundColor: .white,
                            bottomTrailingShadowColor: Color.gray.opacity(0.6),
                            topLeadingShadowColor: Color.white,
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                Circle()
            }
            Spacer()

            NeumorphicShape(isPressed: true,
                            systemIcon: "person",
                            size: 80,
                            backgroundColor: .white,
                            bottomTrailingShadowColor: Color.gray.opacity(0.6),
                            topLeadingShadowColor: Color.white,
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                Circle()
            }

            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
