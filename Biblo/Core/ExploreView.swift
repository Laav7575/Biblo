//
//  ExploreView.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack{
                ScrollView{
                    LazyVStack{
                        ForEach(0...25, id: \.self){ _ in
                            NavigationLink{
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
