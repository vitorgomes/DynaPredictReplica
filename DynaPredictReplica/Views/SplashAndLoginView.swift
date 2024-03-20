//
//  ContentView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 14/03/24.
//

import SwiftUI

struct SplashAndLoginView: View {
    private let screenSize = UIScreen.main.bounds
    
    @State private var shouldAnimate: Bool = false
    @State private var shouldShowText: Bool = false
    
    var body: some View {
        ZStack {
            Image("splashBackground") // Since the image was a screenshot from the original app i had to stretch it to take all the bounds
                .resizable()
                .scaledToFill()
                .frame(width: screenSize.width * 1, height: screenSize.height * 1)
                .ignoresSafeArea()
            
            Image("dynaPredictCube")
                .scaleEffect(shouldAnimate ? 0.3 : 0.5)
                .offset(x: shouldShowText ? -70 : 0, y: 0)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 1.0).repeatCount(2, autoreverses: true)) {
                        self.shouldAnimate = true
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
                        self.shouldShowText = true
                    }
                }
            
            if shouldShowText {
                Text("DynaPredict")
                    .font(.system(size: 24))
                    .foregroundStyle(.white)
                    .bold()
                    .offset(x: 15, y: 0)
                    .animation(
                        Animation.easeInOut(duration: 1.0)
                            .delay(1.5)
                    )
            }
        }
        .padding()
    }
}

#Preview {
    SplashAndLoginView()
}
