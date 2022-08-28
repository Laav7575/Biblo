//
//  FeedView.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import SwiftUI

struct FeedView: View {
    @State private var showNewTweetView = false
    var body: some View {
        
        ZStack (alignment: .bottomTrailing){
            ScrollView {
                LazyVStack {
                    ForEach(0 ... 20, id: \.self) { _ in
                        TweetsRowView()
                            .padding()
                    }
                }
            }
            
            Button{
                showNewTweetView.toggle()
            }label:{
                Image("tweet")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }
            Image (systemName: "pencil.circle")
                .resizable()
                .frame(width: 62, height: 62)
            .background(Color(.systemBrown))
            .foregroundColor(.white)
            .clipShape(Circle())
            .padding()
            .fullScreenCover(isPresented: $showNewTweetView){
                NewTweetView()
                
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
            //Image("bibloForeground")
               // .background()
    }
}
