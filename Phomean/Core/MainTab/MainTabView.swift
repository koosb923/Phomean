//
//  MainTabView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/22.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        TabView(selection: $selectedIndex){
            FeedView()
                .onTapGesture {
                    self.selectedIndex = 0
                }
                .tabItem {
                    if selectedIndex == 0{
                        Image("ic_home_a")
                    } else {
                        Image("ic_home_n")
                    }
                }.tag(0)
            
            ExploreView()
                .onTapGesture {
                    self.selectedIndex = 1
                }
                .tabItem {
                    if selectedIndex == 1{
                        Image("ic_search_a")
                    } else {
                        Image("ic_search_n")
                    }
                }.tag(1)
            
            NotificationView()
                .onTapGesture {
                    self.selectedIndex = 2
                }
                .tabItem {
                    if selectedIndex == 2{
                        Image("ic_alram_a")
                    } else {
                        Image("ic_alram_n")
                    }
                }.tag(2)
            
            MessagesView()
                .onTapGesture {
                    self.selectedIndex = 3
                }
                .tabItem{
                    if selectedIndex == 3{
                        Image("ic_msg_a")
                    } else {
                        Image("ic_msg_n")
                    }
                }.tag(3)
        }
    }
}



struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}
