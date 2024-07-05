//
//  SideMenuViewModel.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/23.
//

import Foundation

enum SideMenuViewModel: Int, CaseIterable {
    case profile
    case lists
    case bookmarks
    case logout
    
    var title: String {
        switch self {
        case .profile: return "프로필"
        case .lists: return "리스트"
        case .bookmarks: return "북마크"
        case .logout: return "로그아웃"
        }
    }
    var imageName: String {
        switch self {
        case .profile: return "person"
        case .lists: return "list.bullet"
        case .bookmarks: return "bookmark"
        case .logout: return "arrow.left.square"
        }
    }
}
