//
//  ContentView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 14/03/24.
//

import SwiftUI

struct SplashAndLoginView: View {
    private var screenSize = UIScreen.main.bounds
    
    @State private var shouldAnimate: Bool = false
    
    var body: some View {
        ZStack {
            Image("splashBackground") // Since the image was a screenshot from the original app i had to stretch it to take all the bounds
                .resizable()
                .scaledToFill()
                .frame(width: screenSize.width * 1, height: screenSize.height * 1)
                .ignoresSafeArea()
            
            Image("dynaPredictCube")
                //.resizable()
                .scaleEffect(shouldAnimate ? 0.3 : 0.5)
                .onAppear {
                    withAnimation(Animation.easeInOut(duration: 1.0).repeatCount(2, autoreverses: true)) {
                        self.shouldAnimate = true
                    }
                }
            
            Text("DynaPredict")
                .font(.system(size: 24))
                .foregroundStyle(.white)
                .bold()
        }
        .padding()
    }
}

#Preview {
    SplashAndLoginView()
}
