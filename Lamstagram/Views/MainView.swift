//
//  MainView.swift
//  Lamstagram
//
//  Created by Thành Đỗ Long on 30/01/2020.
//  Copyright © 2020 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            NavigationView {
                FeedView(feedStore: FeedStore(user: nil))
            }.tabItem {
                Image(systemName: "house")
                Text("Feed")
            }

            NavigationView {
                Text("Profile Tab")
            }.tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }.accentColor(.black)
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
