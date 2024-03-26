//
//  SSOLoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 25/03/24.
//

import SwiftUI

struct SSOLoginView: View {
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

                    VStack {
                        Text("Entrar com SSO")
                        Text("(Single sign-on)")
                    }
                    
                    Spacer()
                    Spacer()
                }
                .font(.system(size: 32))
                .foregroundStyle(.defaultBlue)
                .bold()
                .padding([.top, .bottom], 24)
                
                Spacer()
                
                Text("Sua empresa usa SSO para fazer login no DynaPredict. Insira o e-mail de trabalho SSO.")
                    .font(.system(size: 20))
                    .frame(width: screenSize.width * 0.8)
                    .padding(.bottom, 16)
                
                TextField("Email", text: $email)
                Divider()
                    .padding(.bottom, 8)
                
                Button {
                    
                } label: {
                    Text("ENVIAR EMAIL")
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
                
                Spacer()
                Spacer()
            }
            .frame(width: screenSize.width * 0.9)
        }
        .navigationBarHidden(true)
    }
}

#Preview {
    SSOLoginView()
}
