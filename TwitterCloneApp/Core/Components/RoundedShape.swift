//
//  RoundedShape.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 13/6/23.
//

import SwiftUI



struct RoundeShape: Shape{
    var corners: UIRectCorner
    
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: 80, height: 80))
        
        
        return Path(path.cgPath)
        
    }
    
}
