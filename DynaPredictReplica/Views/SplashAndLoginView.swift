//
//  ContentView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 14/03/24.
//

import SwiftUI

struct SplashAndLoginView: View {
    private var screenSize = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            Image("splashBackground")
                // Since the image was a screenshot from the original app i had to stretch it to take all the bounds
                .resizable()
                .scaledToFill()
                .frame(width: screenSize.width * 1, height: screenSize.height * 1)
                .ignoresSafeArea()
            
            Image("dynaPredictCube")
                .resizable()
                .scaleEffect(x: 0.23, y: 0.1)
            
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
