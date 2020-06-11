//
//  SimpleCapsuleStyle.swift
//  Tasbih
//
//  Created by Yaseen Mallick on 11/05/20.
//  Copyright © 2020 Yaseen Mallick. All rights reserved.
//

import SwiftUI

struct SimpleCapsuleStyle: ButtonStyle {
        func makeBody(configuration: Self.Configuration) -> some View {
            configuration.label
            .padding(30)
            .background(
                Group {
                    if configuration.isPressed {
                        Capsule()
                        .fill(Color.offWhite)
                        .overlay(
                            Capsule()
                                .stroke(Color.gray, lineWidth: 4)
                                .blur(radius: 4)
                                .offset(x: 2, y: 2)
                                .mask(Capsule().fill(LinearGradient(Color.black, Color.clear)))
                        )
                        .overlay(
                            Capsule()
                                .stroke(Color.white, lineWidth: 8)
                                .blur(radius: 4)
                                .offset(x: -2, y: -2)
                                .mask(Capsule().fill(LinearGradient(Color.clear, Color.black)))
                        )
                    } else {
                        Capsule()
                            .fill(Color.offWhite)
                            .shadow(color: Color.black.opacity(0.2), radius: 10, x: 10, y: 10)
                            .shadow(color: Color.white.opacity(0.7), radius: 10, x: -5, y: -5)
                    }
                }
            )
        }
    }

struct SimpleCapsuleStyle_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello World")
    }
}
