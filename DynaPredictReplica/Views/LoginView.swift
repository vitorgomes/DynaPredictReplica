//
//  LoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 15/03/24.
//

import SwiftUI

struct LoginView: View {
    
    
    var body: some View {
        Text("Olá!")
            .font(.system(size: 32))
            .bold()
            .foregroundStyle(.defaultBlue)
        
        Button {
            
        } label: {
            Text("ENTRAR COM E-MAIL E SENHA")
                .foregroundStyle(.white)
        }
        .background(.defaultBlue)
        
        Button {
            
        } label: {
            Text("ENTRAR COM MICROSOFT")
                .foregroundStyle(.defaultBlue)
        }
        
        Button {
            
        } label: {
            Text("Continuar com SSO (Single Sign On)")
                .foregroundStyle(.defaultBlue)
        }
        
        Text("Versão 1.0")
            .foregroundStyle(.gray)
        
        Text("Ao avançar, declaro que li e concordo com os Termos Gerais e Condições de Uso e o Aviso de Privacidade.")
            .foregroundStyle(.gray)
    }
}

#Preview {
    LoginView()
}
