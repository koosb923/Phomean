//
//  UserStatsView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/23.
//

import SwiftUI

struct UserStatsView: View {
    var body: some View {
        HStack(spacing: 24){
            HStack{
                Text("324")
                    .bold()
                Text("팔로잉")
                    .font(.caption)
                    .foregroundColor(Color(.gray))
            }
            
            HStack {
                Text("324")
                    .bold()
                Text("팔로우")
                    .font(.caption)
                    .foregroundColor(Color(.gray))
            }
        }
    }
}

struct UserStatsView_Previews: PreviewProvider {
    static var previews: some View {
        UserStatsView()
    }
}
