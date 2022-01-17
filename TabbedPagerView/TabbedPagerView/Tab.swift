//
//  Tab.swift
//  TabbedPagerView
//
//  Created by Brett Bauman on 1/17/22.
//

import Foundation

enum Tab: Int, CaseIterable {
    case forYou
    case trending
    case news
    
    var title: String {
        switch self {
        case .forYou:
            return "For you"
        case .trending:
            return "Trending"
        case .news:
            return "News"
        }
    }
}
