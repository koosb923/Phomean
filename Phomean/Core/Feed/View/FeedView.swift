//
//  FeedView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/20.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack(alignment: .leading, spacing: 32) {
                ForEach(0 ... 20, id: \.self) { _ in
                    TweetRowView()
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
