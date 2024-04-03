//
//  MachineRowView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 03/04/24.
//

import SwiftUI

struct MachineRowView: View {
    private let screenSize = UIScreen.main.bounds
    
    var body: some View {
        HStack {
            Button {
                // TODO: Add some action
            } label: {
                Image(systemName: "camera.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.defaultBlue)
            }
            .frame(width: screenSize.width * 0.2, height: screenSize.height * 0.1)
            
            VStack(alignment: .leading) {
                Text("Name")
                    .bold()
                
                Text("Principal - Syncronyzed")
                    .foregroundStyle(.gray)
            }
            .padding(.leading, 16)
            
            VStack(spacing: 3) {
                Text("31 Apr")
                
                Image(systemName: "checkmark.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: screenSize.width * 0.08, height: screenSize.height * 0.04)
                    .foregroundColor(.green)
            }
            .padding([.top, .bottom], 24)
            
        }
        .frame(width: screenSize.width * 0.9, height: screenSize.height * 0.1)
        .padding(.leading, 16)
        
        Divider()
    }
}

#Preview {
    MachineRowView()
}
