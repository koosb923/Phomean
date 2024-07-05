//
//  AuthHeaderView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/26.
//

import SwiftUI

struct AuthHeaderView: View {
    let title1: String
    let title2: String

    
    var body: some View {
        HStack{
            VStack(alignment: .leading){
                Text(title1)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                Text(title2)
                    .font(.largeTitle)
                    .fontWeight(.semibold)
            }
            .frame(height: 200)
            .padding(.horizontal, 32)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        
    }
}

struct AuthHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        AuthHeaderView(title1: "hi", title2: "hi2")
    }
}
