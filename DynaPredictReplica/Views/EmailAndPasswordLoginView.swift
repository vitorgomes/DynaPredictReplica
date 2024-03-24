//
//  EmailAndPasswordLoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 23/03/24.
//

import SwiftUI

struct EmailAndPasswordLoginView: View {
    private let screenSize = UIScreen.main.bounds
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        NavigationStack {
            VStack {
                HStack {
                    Button {
                        
                    } label: {
                        Image(systemName: "chevron.backward")
                            
                    }
                    .padding(.leading, 24)
                    
                    Spacer()

                    Text("Faça seu login")
                    
                    Spacer()
                }
                .padding(.top, 24)
                
                Spacer()
                
                VStack(alignment: .leading) {
                    TextField("E-mail", text: $email)
                    Divider()
                    
                    SecureField("Senha", text: $password)
                    Divider()
                    
                    Button {
                        
                    } label: {
                        Text("Esqueceu a senha?")
                    }
                    
                    Button {
                        
                    } label: {
                        Text("ENTRAR")
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
                .frame(width: screenSize.width * 0.9)
                
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
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    EmailAndPasswordLoginView()
}
