//
//  AuthViewModel.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/26.
//

import SwiftUI
import Firebase

class AuthViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    @Published var didAuthenticaterUser = false
    
    
    init() {
        self.userSession = Auth.auth().currentUser
        print("DEBUG: user session is \(self.userSession?.uid)")
    }
    
    func login(withEmail email: String, password:String) {
        Auth.auth().signIn(withEmail: email, password: password) {result, error in
            if let error = error {
                print("DEBUG: 로그인 실패\(error.localizedDescription)")
                return
            }
            
            guard let user = result?.user else {return}
            self.userSession = user
            print("DeBUG: did log user in..")
            
        }
    }
    
    func register(withEmail email:String, password: String, fullname: String, username: String){
        Auth.auth().createUser(withEmail: email, password: password) { result, error in
            if let error = error {
                print("DEBUG: 회원가입에 실패 했습니다.\(error.localizedDescription)")
                return
            }
            guard let user = result?.user else {return}
            
            print("DEBUG: 회원가입에 성공했습니다.")
            print("DEBUG: user is.\(self.userSession)")
            
            let data = ["email":email,
                        "username":username.lowercased(),
                        "fullname":fullname,
                        "uid": user.uid]
            
            Firestore.firestore().collection("users")
                .document(user.uid)
                .setData(data) { _ in
                    self.didAuthenticaterUser = true
                }
        }
    }
    func signOut() {
        // sets user session to nil so we show login view
        userSession = nil
        //signs user out o nserver
        try? Auth.auth().signOut()
    }
 }
