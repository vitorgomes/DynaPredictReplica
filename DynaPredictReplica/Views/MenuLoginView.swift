//
//  LoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 15/03/24.
//

import SwiftUI

struct MenuLoginView: View {
    private let screenSize = UIScreen.main.bounds
    
    var body: some View {
        NavigationStack {
            Text("Olá!")
                .font(.system(size: 32))
                .bold()
                .foregroundStyle(.defaultBlue)
                .padding(.top, 24)
            
            Spacer()
            
            VStack {
                NavigationLink(destination: EmailAndPasswordLoginView()) {
                    Text("ENTRAR COM E-MAIL E SENHA")
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
                
                Button {
                    
                } label: {
                    HStack {
                        Image("microsoftLogo")
                            .resizable()
                            .scaledToFit()
                            .scaleEffect(x: 0.5, y: 0.5)
                        Text("ENTRAR COM MICROSOFT")
                            .foregroundStyle(.defaultBlue)
                            .bold()
                    }
                    .frame(width: screenSize.width * 0.9, height: 48)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.white)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                    )
                }
                .padding(.bottom, 24)
                
                Button {
                    
                } label: {
                    Text("Continuar com SSO (Single Sign On)")
                        .font(.system(size: 16))
                        .foregroundStyle(.defaultBlue)
                        .bold()
                }
            }
            
            Spacer()
            Spacer()
            
            VStack {
                Text("Versão 1.0")
                    .foregroundStyle(.gray)
                
                Text("Ao avançar, declaro que li e concordo com os Termos Gerais e Condições de Uso e o Aviso de Privacidade.")
                    .foregroundStyle(.gray)
            }
            .frame(width: screenSize.width * 0.9)
        }
    }
}

#Preview {
    MenuLoginView()
}