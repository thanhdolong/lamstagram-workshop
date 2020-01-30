//
//  ProfileView.swift
//  Lamstagram
//
//  Created by Thành Đỗ Long on 30/01/2020.
//  Copyright © 2020 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
    private let user: User

    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        ScrollView(.vertical) {
            ProfileHeaderView(user: user)
            ProfileFriendsView(friends: user.friends)
            ProfilePostsView()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: MockData.users.first!)
    }
}
