//
//  GeometryReaderView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/19/26.
//

import SwiftUI

struct GeometryReaderView: View {
    var body: some View {
//        GeometryReader { _ in 
//            Circle()
//                .fill(.purple)
//                .frame(width: 200, height: 200)
//                .overlay(Text("Center").font(.title))
//        }.background(.gray)
//        
//
//        
//        GeometryReader { _ in
//            Circle()
//                .fill(.blue)
//                .frame(width: 350, height: 350)
//            
//            Circle()
//                .fill(.orange)
//                .frame(width: 280, height: 280)
//            
//            Circle()
//                .fill(.purple)
//                .frame(width: 200, height: 200)
//            Text("Top Leading")
//                .font(.largeTitle)
//        }.background(.gray)
        
        GeometryReader { geometry in
            Text("Geometry Reader")
                .font(.largeTitle)
                .bold()
                .position(x : geometry.size.width / 2, y: geometry.safeAreaInsets.top)
            
            // .position -> GeometryProxy
            // size
            // safeAreaInsets
            // frame(in:) -> 단순 CGRect 정보가 아닌 CoordinateSpace라는 열거형 타입이 가진 3가지 값중 하나를 지정하면, 그 좌표 공간에 대한 정보를 반환
            // subscript (첨자)
            VStack {
                Text("Size").bold()
                Text("Width: \(Int(geometry.size.width))")
                Text("Height: \(Int(geometry.size.height))")
            }.position(x: geometry.size.width / 2 , y: geometry.size.height / 2.5)
            
            VStack {
                Text("SafeAreaInsets").bold()
                Text("Top: \(Int(geometry.safeAreaInsets.top))")
                Text("Bottom: \(Int(geometry.safeAreaInsets.bottom))")
            }.position(x: geometry.size.width / 2 , y: geometry.size.height / 1.4)
        }
        .font(.title)
        .frame(height: 500)
        .border(Color.green, width: 5)
    }
}

#Preview {
    GeometryReaderView()
}
