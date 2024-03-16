//
//  LoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 15/03/24.
//

import SwiftUI

struct LoginView: View {
    
    private var screenSize = UIScreen.main.bounds
    
    var body: some View {
        Text("Olá!")
            .font(.system(size: 24))
            .bold()
            .foregroundStyle(.defaultBlue)
        
        VStack {
            Button {
                
            } label: {
                Text("ENTRAR COM E-MAIL E SENHA")
                    .foregroundStyle(.white)
            }
            .frame(width: screenSize.width * 0.9, height: 48)
            .background(.defaultBlue)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            
            Button {
                
            } label: {
                Text("ENTRAR COM MICROSOFT")
                    .foregroundStyle(.defaultBlue)
            }
            .frame(width: screenSize.width * 0.9, height: 48)
            
            Button {
                
            } label: {
                Text("Continuar com SSO (Single Sign On)")
                    .font(.system(size: 14))
                    .foregroundStyle(.defaultBlue)
            }
        }
        
        VStack {
            Text("Versão 1.0")
                .foregroundStyle(.gray)
            
            Text("Ao avançar, declaro que li e concordo com os Termos Gerais e Condições de Uso e o Aviso de Privacidade.")
                .foregroundStyle(.gray)
        }
        .frame(width: screenSize.width * 0.9)
        
    }
}

#Preview {
    LoginView()
}
