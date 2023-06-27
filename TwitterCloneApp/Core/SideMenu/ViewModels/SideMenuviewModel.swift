//
//  SideMenuviewModel.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 9/6/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable{
    case profile
    case lists
    case bookmark
    case logout
    
    
    var description: String{
        switch self{
        case .profile: return "Profile"
        case .lists: return "List"
        case .bookmark: return "Bookmar"
        case .logout: return "Logout"
        }
    }
    
    
    var image: String{
        switch self{
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmark: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
