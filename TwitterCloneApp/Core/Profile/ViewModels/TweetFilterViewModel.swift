//
//  TweetFilterViewModel.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 8/6/23.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable{
    case tweets
    case likes
    case replies
    
    
    var title: String{
        switch self{
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .likes: return "Likes"
        }
    }
}
