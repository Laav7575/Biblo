//
//  BibloApp.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import SwiftUI
import Firebase

@main
struct BibloApp: App {
    
    init (){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView()
            }
        }
    }
}
