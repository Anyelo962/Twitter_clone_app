//
//  MainTabView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 8/6/23.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex:Int = 0
    
    var body: some View {
        
        TabView(selection: $selectedIndex){
            FeedView().onTapGesture {
                self.selectedIndex = 1
            }.tabItem {
                Image(systemName: "house")
            }.tag(1)
            
            ExploreView().onTapGesture {
                self.selectedIndex = 2
            }.tabItem {
                Image(systemName: "magnifyingglass")
            }.tag(2)
            
            NotificationView().onTapGesture {
                self.selectedIndex = 3
            }.tabItem {
                Image(systemName: "bell")
            }.tag(3)
            
            MessageView().onTapGesture {
                self.selectedIndex = 4
            }.tabItem {
                Image(systemName: "envelope")
            }.tag(4)
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
