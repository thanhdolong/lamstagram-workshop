//
//  ProfileHeaderView.swift
//  Lamstagram
//
//  Created by Thành Đỗ Long on 30/01/2020.
//  Copyright © 2020 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
    private let user: User

    init(user: User) {
        self.user = user
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(user.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 80, height: 80)

                Spacer()

                HStack(spacing: 16) {
                    VStack {
                        Text(String(user.numberOfPosts))
                        Text("Post")
                    }

                    VStack {
                        Text(String(user.numberOfFollowers))
                        Text("Followers")
                    }

                    VStack {
                        Text(String(user.numberFollowing))
                        Text("Following")
                    }
                }

                Spacer()
            }

            Text(user.description)
                .fixedSize(horizontal: false, vertical: true)
                .frame(maxWidth: .infinity, alignment: .leading)
        }.padding()
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: MockData.users.first!)
    }
}
