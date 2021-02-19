//
//  AlarmView.swift
//  neumorphism
//
//  Created by Pere Almendro on 15/2/21.
//

import SwiftUI

struct AlarmView: View {
    var body: some View {
        VStack {
            Spacer()
            NeumorphicShape(isPressed: false,
                            systemIcon: "alarm",
                            size: 80,
                            backgroundColor: .white,
                            bottomTrailingShadowColor: Color.gray.opacity(0.6),
                            topLeadingShadowColor: Color.white,
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                Rectangle()
            }
            Spacer()

            NeumorphicShape(isPressed: true,
                            systemIcon: "alarm",
                            size: 80,
                            backgroundColor: .white,
                            bottomTrailingShadowColor: Color.gray.opacity(0.6),
                            topLeadingShadowColor: Color.white,
                            iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
                Rectangle()
            }

            Spacer()
        }
    }
}

struct AlarmView_Previews: PreviewProvider {
    static var previews: some View {
        AlarmView()
    }
}
