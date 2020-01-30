//
//  FeedView.swift
//  Lamstagram
//
//  Created by Thành Đỗ Long on 30/01/2020.
//  Copyright © 2020 Jan Kaltoun. All rights reserved.
//

import SwiftUI

struct FeedView: View {
    @ObservedObject var feedStore: FeedStore

    init(feedStore: FeedStore) {
        self.feedStore = feedStore
    }

    var body: some View {
        ScrollView(.vertical) {
            ForEach(feedStore.posts) { item in
                PostView()
            }
        }
        .navigationBarTitle(Text("Feed"))
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView(feedStore: FeedStore(user: nil))
    }
}
