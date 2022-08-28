//
//  NewTweetView.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-28.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment (\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            HStack{
                Button{
                    presentationMode.wrappedValue.dismiss()
                }label:{
                    Text("Cancel")
                        .foregroundColor(Color(.systemGreen))
                }
                
                Spacer()
                
                Button{
                    print("annot")
                }label:{
                    Text("annot")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .background(Color(.systemGreen))
                        .foregroundColor(.white)
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack(alignment: .top){
                Circle()
                    .frame(width: 64, height: 64)
                
                TextArea("Write an annot!", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
            .previewInterfaceOrientation(.portrait)
    }
}
