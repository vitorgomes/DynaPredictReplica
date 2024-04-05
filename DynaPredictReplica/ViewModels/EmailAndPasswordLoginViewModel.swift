//
//  EmailAndPasswordLoginViewModel.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 04/04/24.
//

import Foundation

class EmailAndPasswordLoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    
    func login() {
        
    }
}
