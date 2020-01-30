//
//  PostView.swift
//  Lamstagram
//
//  Created by Thành Đỗ Long on 30/01/2020.
//  Copyright © 2020 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct PostView: View {
    let post: Post

    init(post: Post) {
        self.post = post
    }

    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(post.user.imageName)
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 40, height: 40)

                VStack(alignment: .leading) {
                    Text(post.user.nickname)
                    Text(post.user.name)
                }
            }.padding()

            Image(post.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)

            HStack {
                Image(systemName: "heart")
                Image(systemName: "message")
                Image(systemName: "paperplane")

                Spacer()

                Image(systemName: "bookmark")
            }.padding()
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: MockData.posts.first!)
    }
}
