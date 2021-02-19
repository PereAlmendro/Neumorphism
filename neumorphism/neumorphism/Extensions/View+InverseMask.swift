//
//  View+InverseMask.swift
//  neumorphism
//
//  Created by Pere Almendro on 14/2/21.
//

import SwiftUI

extension View {
    func inverseMask<Mask>(_ mask: Mask) -> some View where Mask : View {
        self.mask(mask
                    // Set the foreground color of the input mask to black.
                    // Ensure the background of the input mask is solid white.
                    .foregroundColor(.black)
                    .background(Color.white)
                    // by using compositingGroup, you have a single-rendered layer composed of black and white pixels
                    .compositingGroup()
                    // The dark regions in a view become transparent,
                    // and the bright regions become opaque black.
                    // Medium brightness regions become a partially opaque gray color
                    .luminanceToAlpha()
        )
    }
}
