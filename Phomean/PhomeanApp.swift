//
//  PhomeanApp.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/20.
//

import SwiftUI
import Firebase

@main
struct PhomeanApp: App {
    
    @StateObject var viewModel = AuthViewModel()
    
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            NavigationView{
//                ContentView()
                ProfilePhotoSelectorView()
            }
            .environmentObject(viewModel)
        }
    }
}
