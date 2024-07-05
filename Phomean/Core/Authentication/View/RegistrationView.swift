//
//  RegistrationView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/26.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var username = ""
    @State private var fullname = ""
    @State private var passwoard = ""
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            AuthHeaderView(title1: "포민", title2: "가입하기")
            
            NavigationLink(destination: ProfilePhotoSelectorView(),
                           isActive: $viewModel.didAuthenticaterUser,
                           label: { })
            
            VStack(spacing: 24){
                CustomInputField(imageName: "ic_email",
                                 placeholderText: "이메일을 입력하세요",
                                 text: $email)
                
                CustomInputField(imageName: "ic_password",
                                 placeholderText: "성을 입력하세요.",
                                 text: $username)
                
                CustomInputField(imageName: "ic_password",
                                 placeholderText: "이름을 입력하세요.",
                                 text: $fullname)
                
                CustomInputField(imageName: "ic_password",
                                 placeholderText: "비밀번호를 입력하세요",
                                 isSecureField: true,
                                 text: $passwoard)
                
                Button {
                    viewModel.register(withEmail: email,
                                       password: passwoard,
                                       fullname: fullname,
                                       username: username)
                } label: {
                    Text("회원가입")
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .font(.headline)
                        .bold()
                        .foregroundColor(.white)
                        .background(Color(.black))
                        .cornerRadius(16)
                }
                Spacer()
                
                Button{
                    presentationMode.wrappedValue.dismiss()
                } label: {
                    HStack(alignment: .center) {
                        Text("이미 회원이신가요?")
                            .font(.footnote)
                        Text("로그인 하기")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color(.systemBlue))
                }
            }
            .padding(.horizontal, 32)
        }
    }
}

struct RegistrationView_Previews: PreviewProvider {
    static var previews: some View {
        RegistrationView()
    }
}
