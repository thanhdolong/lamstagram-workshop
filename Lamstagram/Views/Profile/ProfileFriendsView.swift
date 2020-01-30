//
//  ProfileFriendsView.swift
//  Lamstagram
//
//  Created by Thành Đỗ Long on 30/01/2020.
//  Copyright © 2020 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfileFriendsView: View {
    private let friends: [User]

    init(friends: [User]) {
        self.friends = friends
    }

    var body: some View {
        ScrollView {
            HStack {
                ForEach(friends) { friend in
                    VStack {
                        Image(friend.imageName)
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 40, height: 40)

                        Text(friend.name)
                            .font(.caption)
                    }
                    .frame(width: 70,
                           height: 70,
                           alignment: .center)
                }
            }
        }
    }
}

struct ProfileFriendsView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileFriendsView(friends: MockData.users.first!.friends)
    }
}
