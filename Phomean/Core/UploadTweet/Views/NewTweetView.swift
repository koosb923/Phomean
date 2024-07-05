//
//  NewTweetView.swift
//  Phomean
//
//  Created by 구성범 on 2022/12/26.
//

import SwiftUI

struct NewTweetView: View {
    @State private var caption = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    presentationMode.wrappedValue.dismiss()
                    print("취소")
                } label: {
                    Text("취소")
                        .foregroundColor(.blue)
                }
                
                Spacer()
                
                Button {
                    print("트윗")
                } label: {
                    Text("트윗")
                        .bold()
                        .padding(.horizontal)
                        .padding(.vertical, 8)
                        .foregroundColor(.white)
                        .background(Color(.systemBlue))
                        .clipShape(Capsule())
                }
            }
            .padding()
            
            HStack(alignment: .top) {
                Circle()
                    .frame(width: 64, height: 64)
                TextArea("어떤일이 있었나요?", text: $caption)
            }
            .padding()
        }
    }
}

struct NewTweetView_Previews: PreviewProvider {
    static var previews: some View {
        NewTweetView()
    }
}
