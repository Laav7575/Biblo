//
//  TweetsRowView.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import SwiftUI

struct TweetsRowView: View {
    var body: some View {
        VStack (alignment: .leading){
            //profile image and user info and tweet
            HStack (alignment: .top, spacing: 12) {
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                //user info and tweet captions
                VStack(alignment: .leading, spacing: 4) {
                    //user info
                    HStack {
                        Text("Bruce Wayne")
                            .font(.subheadline).bold()
                        
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                        Text("2w") //date of account
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //tweet caption
                    
                    Text("I believe in vengeance")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            //action buttons
            
            HStack {
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    //action goes here
                } label: {
                    Image(systemName: "book")
                        .font(.subheadline)
                }

            }
            .padding()
        }
        .padding()
    }
}

struct TweetsRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetsRowView()
    }
}
