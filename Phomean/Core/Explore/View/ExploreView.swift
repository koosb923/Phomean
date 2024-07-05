//
//  ExploreView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/22.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationView{
            VStack {
                ScrollView {
                    LazyVStack {
                        ForEach(0 ... 25, id: \.self) {_ in
                            NavigationLink {
                                ProfileView()
                            } label: {
                                UserRowView()
                            }
                            
                        }
                    }
                }
            }
            .navigationTitle("검색")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
