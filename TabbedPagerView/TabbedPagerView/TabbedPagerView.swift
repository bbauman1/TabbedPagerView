//
//  TabbedPagerView.swift
//  TabbedPagerView
//
//  Created by Brett Bauman on 1/17/22.
//

import SwiftUI

struct TabbedPagerView: View {
    
    @State private var selectedTab: Tab = Tab.allCases.first!
    private let tabs = Tab.allCases
    
    var body: some View {
        VStack {
            HeaderView(selectedTab: $selectedTab, tabs: tabs)
            PagerView(selectedTab: $selectedTab, tabs: tabs)
        }
    }
}
