//
//  BottomLoginView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 29/03/24.
//

import SwiftUI

struct BottomLoginView: View {
    private let screenSize = UIScreen.main.bounds
    
    var body: some View {
        VStack {
            Text("Versão 1.0")
                .foregroundStyle(.gray)
            
            Text("Ao avançar, declaro que li e concordo com os ")
                .foregroundStyle(.gray)
            
            +

            Text("[Termos Gerais e Condições de Uso](https://content.dynamox.net/wp-content/uploads/2023/09/TERMOS-GERAIS-E-CONDICOES-DE-USO-PT-1.pdf)")
                .underline()

            +
            
            Text(" e o ")
                .foregroundStyle(.gray)
            
            +
            
            Text("[Aviso de Privacidade](https://content.dynamox.net/wp-content/uploads/2023/12/Aviso-de-privacidade-DynaPredict-Unificado.pdf)")
                .underline()
            
            +
            
            Text(".")
                .foregroundStyle(.gray)
        }
        .frame(width: screenSize.width * 0.9)
    }
}

#Preview {
    BottomLoginView()
}
