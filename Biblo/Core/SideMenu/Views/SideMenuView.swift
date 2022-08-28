//
//  SideMenuView.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        
        VStack {
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
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { option in
                
            }
        }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
