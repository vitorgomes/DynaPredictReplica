//
//  RoundedRectangleButtonWithShadow.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 30/03/24.
//

import SwiftUI

private let screenSize = UIScreen.main.bounds

extension View {
    func roundedRectangleButtonWithShadow() -> some View {
        self
            .foregroundStyle(.white)
            .bold()
            .frame(width: screenSize.width * 0.9, height: 48)
            .background(.defaultBlue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.white)
                    .shadow(color: .gray, radius: 2, x: 0, y: 2)
            )
    }
}
