//
//  UserRowView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/23.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack (spacing: 16){
            Circle()
                .frame(width: 48, height: 48)
            
            VStack(alignment: .leading, spacing: 4){
                Text("이름")
                    .font(.subheadline).bold()
                    .foregroundColor(Color(.black))
                Text("내용내용내용")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
            }
            Spacer()
        }
        .padding(.horizontal)
        .padding(.vertical, 16)
    }
    
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
