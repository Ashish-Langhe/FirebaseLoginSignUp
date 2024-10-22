//
//  CapsuleButtonStyle.swift
//  FirebaseAuth
//
//  Created by Ashish Langhe on 22/10/24.
//

import SwiftUI

struct CapsuleButtonStyle: ButtonStyle {
    
    var bgColor: Color = .teal
    var textColor: Color = .white
    var hasBorder: Bool = false
    
    func makeBody(
        configuration: Configuration
    ) -> some View {
        configuration.label
            .foregroundStyle(
                textColor
            )
            .padding()
            .frame(
                maxWidth: .infinity
            )
            .background(
                bgColor
            )
            .background(
                in: .capsule
            )
            .scaleEffect(
                configuration.isPressed ? 0.95 : 1
            )
            .overlay {
                hasBorder ?
                Capsule()
                    .stroke(
                        .gray,
                        lineWidth: 1
                    ): nil
            }
    }
}
