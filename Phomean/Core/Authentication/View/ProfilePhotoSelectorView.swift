//
//  ProfilePhotoSelectorView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/27.
//

import SwiftUI
import AVFoundation


struct ProfilePhotoSelectorView: View {
    @State private var showImagePicker = false
    @State private var selectedImage:UIImage?
    @State private var profileImage: Image?
    
    
    var body: some View {
        
        VStack(alignment: .leading) {
            AuthHeaderView(title1: "너의 사진을",
                           title2: "등록해봐")
            Button {
                showImagePicker.toggle()
            } label: {
                if let profileImage = profileImage {
                    profileImage
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160)
                        .padding(32)
                } else {
                    Image("img_profile")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 160)
                        .padding(32)
                }
            }
            Spacer()
                .sheet(isPresented: $showImagePicker){
                    ImagePicker(selectedImage: $selectedImage)
                }
        }
    }
}

struct ProfilePhotoSelectorView_Previews: PreviewProvider {
    static var previews: some View {
        ProfilePhotoSelectorView()
    }
}

func checkCameraPermission(){
      AVCaptureDevice.requestAccess(for: .video, completionHandler: { (granted: Bool) in
          if granted {
              print("Camera: 권한 허용")
          } else {
              print("Camera: 권한 거부")
          }
      })
   }
