//
//  EmailAndPasswordLoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 23/03/24.
//

import SwiftUI

struct EmailAndPasswordLoginView: View {
    private let screenSize = UIScreen.main.bounds
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var showPassword: Bool = false
    
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

                    Text("Faça seu login")
                    
                    Spacer()
                    Spacer()
                }
                .font(.system(size: 32))
                .foregroundStyle(.defaultBlue)
                .bold()
                .padding([.top, .bottom], 24)
                
                Spacer()
                
                VStack(alignment: .leading, spacing: 16) {
                    TextField("E-mail", text: $email)
                    Divider()
                    
                    HStack {
                        if showPassword {
                            TextField("Senha", text: $password)
                        } else {
                            SecureField("Senha", text: $password)
                        }
                        
                        Button {
                            self.showPassword.toggle()
                        } label: {
                            if showPassword {
                                Image(systemName: "eye.fill")
                                    .tint(.gray)
                            } else {
                                Image(systemName: "eye.slash.fill")
                                    .tint(.gray)
                            }
                        }
                    }
                    Divider()
                    
                    Button {
                        
                    } label: {
                        Text("Esqueceu a senha?")
                            .tint(.gray)
                            .bold()
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
