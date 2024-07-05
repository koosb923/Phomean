//
//  SideMenuView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/23.
//

import SwiftUI

struct SideMenuView: View {
    @EnvironmentObject var authViewModel: AuthViewModel
    var body: some View {
        
        VStack(alignment: .leading) {
            VStack(alignment: .leading, spacing: 16) {
                Circle()
                    .frame(width: 48, height: 48)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text("브루스리")
                        .font(.headline).bold()
                    Text("@idName")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                }
                UserStatsView()
                    .padding(.vertical)
            }
            
            
            ForEach(SideMenuViewModel.allCases, id: \.rawValue) { viewModel in
                if viewModel == .profile {
                    NavigationLink {
                        ProfileView()
                    } label:{
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                } else if viewModel == .logout {
                    Button {
                        authViewModel.signOut()
                        
                    } label: {
                        SideMenuOptionRowView(viewModel: viewModel)
                    }
                    
                } else {
                    SideMenuOptionRowView(viewModel: viewModel)
                }
            }
            Spacer()
        }
        .padding(.all)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
