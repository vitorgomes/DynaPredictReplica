//
//  RecoveryPasswordView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 30/03/24.
//

import SwiftUI

struct RecoveryPasswordView: View {
    private let screenSize = UIScreen.main.bounds
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var email: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "chevron.backward")
                            
                    }
                    .padding(.leading, 24)
                    
                    Spacer()
                    
                    Text("Recuperar senha")
                    
                    Spacer()
                    Spacer()
                }
                .font(.system(size: 32))
                .foregroundStyle(.defaultBlue)
                .bold()
                .padding([.top, .bottom], 24)
                
                Spacer()
                
                VStack {
                    TextField("Email", text: $email)
                    
                    Divider()
                        .padding(.bottom, 8)
                    
                    Button {
                        
                    } label: {
                        Text("RECUPERAR")
                            .roundedRectangleButtonWithShadow()
                    }
                }
                .frame(width: screenSize.width * 0.9)
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                BottomLoginView()
            }
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    RecoveryPasswordView()
}
