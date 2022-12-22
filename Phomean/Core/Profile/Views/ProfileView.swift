//
//  ProfileView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/22.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        VStack(alignment: .leading) {
            
            headerView
            
            actionButton
            
            userInfoDetails
            
            .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 16))
            
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView {
    
    
    //헤더
    var headerView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
            VStack(spacing: 8){
                Button{
                    
                } label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(.white)
                }
                
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x:16, y:24)
            }
            
        }
        .frame(height: 96)
    }
    
    //버튼
    var actionButton: some View {
        HStack{
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button{
                
            } label: {
                Text("프로필 수정")
                    .font(.subheadline).bold()
                    .frame(width: 120, height: 32)
                    .foregroundColor(.black)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
        }
        .padding(EdgeInsets(top: 8, leading: 16, bottom: 0, trailing: 16))
    }
    
    
    //유저 기타 정보
    
    var userInfoDetails: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                Text("닉네임 입니다..")
                    .font(.title2).bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
            }
            
            //@아이디
            Text("@idtext")
                .font(.subheadline)
                .foregroundColor(Color(.gray))
            
            Text("나의 자기 소개")
                .font(.subheadline)
                .padding(.vertical)
            
            HStack(spacing: 24){
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("서울, 금천구")
                }
                
                HStack {
                    Image(systemName: "link")
                    Text("www.duck.com")
                }
            }
            .font(.caption)
            .foregroundColor(Color(.gray))
            
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
            .padding(.vertical)
        
        }
        
    }
}
