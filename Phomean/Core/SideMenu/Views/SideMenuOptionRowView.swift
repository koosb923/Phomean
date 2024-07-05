//
//  SideMenuOptionRowView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/23.
//

import SwiftUI

struct SideMenuOptionRowView: View {
    let viewModel: SideMenuViewModel
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: viewModel.imageName)
                .resizable()
                .scaledToFit()
                .font(.headline)
                .foregroundColor(.gray)
                .frame(width: 18, height: 18)
            Text(viewModel.title)
                .font(.callout).bold()
                .foregroundColor(.black)
            Spacer()
        }
        .padding(.vertical, 16)
    }
}

struct SideMenuOptionRowView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuOptionRowView(viewModel: .profile)
    }
}
