//
//  LinearGradient+Gradients.swift
//  neumorphism
//
//  Created by Pere Almendro on 15/2/21.
//

import SwiftUI

extension LinearGradient {

    public static var lairHorizontalDarkReverse: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.lairDarkGray, .lairShadowGray]),
            startPoint: .leading,
            endPoint: .trailing
        )
    }
}
