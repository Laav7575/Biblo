//
//  SideMenuView.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack (alignment: .leading, spacing: 32){
            VStack (alignment: .leading) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack (alignment: .leading, spacing: 4) {
                    Text("Bruce Wayne")
                        .font(.headline)
                    
                    Text("@batman")
                        .font(.caption)
                        .foregroundColor(.brown)
                    
                }
                
                UserStatsView()
                    .padding(.vertical)
            }
            .padding(.leading)
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    }label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }else if viewModel == .logout{
                    Button{
                        print ("Handle logout here...")
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                }else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
            }
            
            Spacer()
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}

