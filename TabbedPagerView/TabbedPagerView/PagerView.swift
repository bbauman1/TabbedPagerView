//
//  PagerView.swift
//  TabbedPagerView
//
//  Created by Brett Bauman on 1/17/22.
//

import SwiftUI

struct PagerView: View {

    @Binding var selectedTab: Tab
    let tabs: [Tab]

    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(tabs, id: \.rawValue) { tab in
                Text(tab.title)
                    .font(.system(size: 32, weight: .bold, design: .rounded))
                    .tag(tab)
            }
        }
        .tabViewStyle(.page(indexDisplayMode: .never))
        .animation(.easeOut, value: selectedTab)
    }
}
