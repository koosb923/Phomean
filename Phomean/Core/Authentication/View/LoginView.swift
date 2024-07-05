//
//  LoginView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/26.
//
import Foundation
import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var passwoard = ""
    @EnvironmentObject var viewModel: AuthViewModel
    
    var body: some View {
        
        VStack(alignment: .leading){
            AuthHeaderView(title1: "포민에 오신걸",
                           title2: "환영 합니다.")
            VStack(spacing: 24){
                CustomInputField(imageName: "ic_email",
                                 placeholderText: "이메일을 입력하세요",
                                 text: $email)
                
                CustomInputField(imageName: "ic_password",
                                 placeholderText: "비밀번호를 입력하세요",
                                 isSecureField: true,
                                 text: $passwoard)
            }
            .padding(.horizontal, 32)
            
            
            
            //비밀번호를 잊으셨나요?
            HStack {
                Spacer()
                
                NavigationLink {
                    Text("비밀번호를 잊으셨나요?")
                } label: {
                    Text("비밀번호를 잊으셨나요?")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(.blue)
                }
                .padding(.trailing, 32)
                .padding(.bottom, 32)
            }
            
            
            Button {
                viewModel.login(withEmail: email, password: passwoard)
            } label: {
                Text("로그인")
                    .frame(maxWidth: .infinity, maxHeight: 60)
                    .font(.headline)
                    .bold()
                    .foregroundColor(.white)
                    .background(Color(.black))
                    .cornerRadius(16)
                    
            }
            .padding(.horizontal, 32)
            Spacer()
            
            NavigationLink{
                RegistrationView()
                    .navigationBarHidden(true)
            } label: {
                HStack(alignment: .center) {
                    Text("아직 회원이 아닌가요?")
                        .font(.footnote)
                    Text("가입하기")
                        .font(.footnote)
                        .fontWeight(.semibold)
                }
                .frame(maxWidth: .infinity)
                .foregroundColor(Color(.systemBlue))
            }
        }
        .onAppear (perform : UIApplication.shared.hideKeyboard)  
        
    }
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }
}


extension UIApplication {
    func hideKeyboard() {
        guard let window = windows.first else { return }
        let tapRecognizer = UITapGestureRecognizer(target: window, action: #selector(UIView.endEditing))
        tapRecognizer.cancelsTouchesInView = false
        tapRecognizer.delegate = self
        window.addGestureRecognizer(tapRecognizer)
    }
 }
 
extension UIApplication: UIGestureRecognizerDelegate {
    public func gestureRecognizer(_ gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWith otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return false
    }
}
