//
//  IdealFrame.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/24/26.
//

import SwiftUI

struct IdealFrame: View {
    var body: some View {
//        VStack {
//            
//            Text("Frame Ideal")
//                .font(.title)
//                .bold()
//                .frame(width: 80, height: 30)
//            
//            Rectangle()
//            Color.red
//            Image(systemName: "book.fill")
//            
//        }
        
        VStack(spacing: 100) {
            VStack {
                
                Text("Frame Ideal")
                    .font(.title)
                    .bold()
                    .fixedSize()
                    .frame(width: 80, height: 30)
                
                Rectangle().fixedSize()
                Color.red.fixedSize()
                Image(systemName: "book.fill").resizable().fixedSize()
                
            }
            
            
            VStack(spacing: 20) {
                Group { // 자식 뷰에 공통으로 동일한 수식어를 적용하고 싶을 때 Group 활용 가능
                    Text("FixedSize를 사용하면 글자가 생략되지 않습니다")
                    
                    Text("FixedSize를 사용하면 글자가 생략되지 않습니다")
                        .font(.title)
                        .fixedSize(horizontal: true, vertical: false)
                    
                    Text("FixedSize를 사용하면 글자가 생략되지 않습니다").font(.title)
                        .fixedSize(horizontal: false, vertical: true)
                }
                .font(.title)
                .frame(width: 150, height: 40)
            }
        }
    }
}

#Preview {
    IdealFrame()
}
