//
//  SideMenuViewModel.swift
//  Biblo
//
//  Created by Mehar Mohal on 2022-08-27.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case bookmarks
    case logout
    
    var title: String {
        switch self {
        case .profile: return "Profile"
        case .bookmarks: return "Bookmarks"
        case .logout: return "Logout"
        }
    }
    
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
