//
//  FrameConcept.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/24/26.
//

import SwiftUI

struct FrameConcept: View {
    var body: some View {
        VStack(spacing: 20) {
            Text("Yellow Space").background(.yellow).frame(width: 120, height: 80) // 문자 사이즈의 크기만큼만 배경을 칠하며 차지한다.

            Rectangle().fill(.green).frame(width: 200, height: 100) // 공간 전체를 활용
            
            
            HStack {
                Text("Yellow").background(.yellow).frame(width: 120, height: 90, alignment: .leading).border(Color.black, width: 1)
                Text("Yellow").background(.yellow).frame(width: 120, height: 90).border(Color.black, width: 1)
                Text("Yellow").background(.yellow).frame(width: 120, height: 90, alignment: .trailing).border(Color.black, width: 1)
                
            }
            
            HStack {
                // width: minWidth < maxWidth
                Rectangle().fill(.red).frame(minWidth: 100)
                Rectangle().fill(.yellow).frame(maxWidth: 15)
                
                // height : minHeight < maxHeight
                Rectangle().fill(.yellow).frame(minHeight: 150)
                
                Rectangle().fill(.yellow).frame(maxHeight: .infinity)
                
                
                Rectangle().fill(.blue)
                    .frame(maxWidth: .infinity, maxHeight: .infinity    )
                
                Rectangle().fill(.purple)
            }.frame(width: 300, height: 150)
        }
    }
}

#Preview {
    FrameConcept()
}
