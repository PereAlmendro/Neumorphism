//
//  NeumorphicShape.swift
//  neumorphism
//
//  Created by Pere Almendro on 15/2/21.
//

import SwiftUI

struct NeumorphicShape<NShape> : View where NShape : Shape {

    let isPressed: Bool
    let systemIcon: String
    let size: CGFloat

    var backgroundColor: Color = Color.white
    var bottomTrailingShadowColor: Color = Color.lairShadowGray
    var topLeadingShadowColor: Color = Color.white
    var iconGradientColor: LinearGradient = LinearGradient.lairHorizontalDarkReverse

    let shape: () -> NShape

    var body: some View {
        if isPressed {
            buttonDown
        } else {
            buttonUp
        }
    }

    var buttonUp: some View {

        var buttonMask: some View {
            ZStack {
                shape()
                    .foregroundColor(backgroundColor)
                    .frame(width: size * 2, height: size * 2)
                Image(systemName: systemIcon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
            }
        }

        var button: some View {
            shape()
                .inverseMask(buttonMask)
                .frame(width: size * 2, height: size * 2)
                .foregroundColor(backgroundColor)
                .shadow(color: bottomTrailingShadowColor,
                        radius: (size / 10),
                        x: (size / 10),
                        y: (size / 10)) // Shadow bottom trailing
                .shadow(color: Color.white.opacity(0.7),
                        radius: (size / 10),
                        x: -(size / 10),
                        y: -(size / 10)) // Shadow top leading
        }

        return button
    }

    var buttonDown: some View {

        var buttonMask: some View {
            shape().padding(size / 8)
        }

        var button: some View {
            ZStack {
                shape()
                    .foregroundColor(backgroundColor)
                    .frame(width: size * 2.25, height: size * 2.25)
                    .inverseMask(buttonMask)
                    .shadow(color: bottomTrailingShadowColor,
                            radius: (size * 0.18),
                            x: (size * 0.18),
                            y: (size * 0.18))
                    .shadow(color: topLeadingShadowColor,
                            radius: (size * 0.18),
                            x: -(size * 0.18),
                            y: -(size * 0.18))

                iconGradientColor
                    .frame(width: size, height: size)
                    .mask(
                        Image(systemName: self.systemIcon)
                            .resizable()
                            .scaledToFit()
                    )
            }
        }
        return button
    }
}

struct Neumorphicbutton_Previews: PreviewProvider {
    static var previews: some View {
        NeumorphicShape(isPressed: true,
                        systemIcon: "person",
                        size: 32,
                        backgroundColor: .white,
                        bottomTrailingShadowColor: Color.lairShadowGray,
                        topLeadingShadowColor: Color.white,
                        iconGradientColor: LinearGradient.lairHorizontalDarkReverse) {
            Rectangle()
        }
    }
}
