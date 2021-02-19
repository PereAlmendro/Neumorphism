//
//  PencilTipView.swift
//  neumorphism
//
//  Created by Pere Almendro on 15/2/21.
//

import SwiftUI

struct PencilTipView: View {
    var blackCircle: some View {
        Circle()
            .fill(Color.black)
            .frame(width: 40, height: 40, alignment: .center)
    }

    var blackCircleInWhiteSquare: some View {
        Color.white.frame(width: 60, height: 60, alignment: .center)
            .overlay(blackCircle, alignment: .center)
    }

    var body: some View {
        VStack {
            Text("Inverse Mask")

            HStack {
                Spacer()

                blackCircleInWhiteSquare

                Spacer()

                Rectangle()
                    .frame(width: 60, height: 60, alignment: .center)
                    .inverseMask(
                        blackCircleInWhiteSquare
                    )

                Spacer()

            }
            .padding()
            .background(Color.blue)

            Spacer()
        }
    }
}

struct PencilTipView_Previews: PreviewProvider {
    static var previews: some View {
        PencilTipView()
    }
}
