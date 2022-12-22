//
//  TweetRowView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/20.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            
            //프로필 이미지 + 유저정보 + 트윗
            HStack(alignment: .top, spacing: 24) {
                Circle()
                    .frame(width: 40, height: 40)
                    .foregroundColor(Color(.systemBlue))
                
                //유저 정보 & 트윗 표제
                VStack(alignment: .leading, spacing: 8){
                    HStack {
                        //유저 정보
                        Text("브루스리")
                            .font(.subheadline).bold()
                        Text("@batman")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text("2w")
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    
                    //트윗표제
                    Text("나는 트위터 내용입니다.")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    //액션버튼
                    HStack {
                        Button {
                            // 액션버튼 여기
                        }
                    label: {
                        Image("ic_like")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fit)
                            .font(.subheadline)
                    }
                        
                        Spacer()
                        
                        Button {
                            // 액션버튼 여기
                        }
                    label: {
                        Image("ic_retweet")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fit)
                            .font(.subheadline)
                    }
                        
                        Spacer()
                        
                        Button {
                            // 액션버튼 여기
                        }
                    label: {
                        Image("ic_comment")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fit)
                            .font(.subheadline)
                    }
                        
                        Spacer()
                        
                        Button {
                            // 액션버튼 여기
                        }
                    label: {
                        Image("ic_share")
                            .resizable()
                            .frame(width: 16, height: 16)
                            .aspectRatio(contentMode: .fit)
                            .font(.subheadline)
                    }
                    }
                    .padding(EdgeInsets(.init(top: 8, leading: 0, bottom: 0, trailing: 0)))
                    
                    Divider()
                        .padding(EdgeInsets(.init(top: 8, leading: 0, bottom: 0, trailing: 0)))
                }
            }
            .padding(EdgeInsets(.init(top: 8, leading: 24, bottom: 8, trailing: 24)))
            
            
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
