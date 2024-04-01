//
//  MachinesListView.swift
//  DynaPredictReplica
//
//  Created by Vitor Gomes on 31/03/24.
//

import SwiftUI

struct MachinesListView: View {
    private let screenSize = UIScreen.main.bounds
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            ScrollView {
                HStack {
                    Button {
                        // TODO: Add some action
                    } label: {
                        Image(systemName: "camera.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.defaultBlue)
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                            .bold()
                        Text("Principal - Syncronyzed")
                    }
                    
                    VStack {
                        Text("31 Apr")
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.green)
                    }
                }
                .padding(.leading, 16)
                
                Divider()
                
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.defaultBlue)
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                        Text("Principal - Syncronyzed")
                    }
                    
                    VStack {
                        Text("31 Apr")
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.green)
                    }
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.defaultBlue)
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                        Text("Principal - Syncronyzed")
                    }
                    
                    VStack {
                        Text("31 Apr")
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.green)
                    }
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.defaultBlue)
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                        Text("Principal - Syncronyzed")
                    }
                    
                    VStack {
                        Text("31 Apr")
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.green)
                    }
                }
                
                Divider()
                
                HStack {
                    Image(systemName: "camera.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.defaultBlue)
                    
                    VStack(alignment: .leading) {
                        Text("Name")
                        Text("Principal - Syncronyzed")
                    }
                    
                    VStack {
                        Text("31 Apr")
                        Image(systemName: "checkmark.circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.green)
                    }
                }
                
                Divider()
            }
            
            Button {
                
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .scaledToFit()
                    .foregroundColor(.blue)
                    .frame(width: 100, height: 100)
                    .padding(.trailing, 16)
            }
        }
    }
}

#Preview {
    MachinesListView()
}
