//
//  TweetFilterViewModel.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/22.
//

import Foundation

enum TweetFilterViewModel: Int, CaseIterable {
    case tweets
    case replies
    case like
    
    var title: String {
        switch self {
        case .tweets: return "Tweets"
        case .replies: return "Replies"
        case .like: return "Likes"
        }
    }
}
