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
        HStack {
            Image(post.imageName)
            VStack {
                Text(post.text)
                Text(post.user.name)
            }
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: MockData.posts.first!)
    }
}
