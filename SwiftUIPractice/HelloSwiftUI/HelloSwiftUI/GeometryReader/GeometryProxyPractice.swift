//
//  GeometryProxyPractice.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/24/26.
//

import SwiftUI

struct GeometryProxyPractice: View {
    
    func stringFormat(for point: CGPoint) -> String {
        return String(format : "(x: %.f, y: %.f)", arguments: [point.x, point.y])
    }
    
    // global : 화면 전체 영역 (윈도우 bounds)를 기준으로 한 좌표 정보
    // local : 지오메트리 리더의  bounds를 기준으로 한 좌표 정보
    // named("VStackCS") : 명시적으로 이름을 할당한 공간을 기준으로 한 좌표 정보
    func contents(geometry g: GeometryProxy) -> some View{
        VStack {
            Text("Local").bold()
            Text(stringFormat(for : g.frame(in: .local).origin)).padding(.bottom)
            
            Text("Global").bold()
            Text(stringFormat(for : g.frame(in: .global).origin)).padding(.bottom)
            
            
            Text("Named VStackCS").bold()
            Text(stringFormat(for : g.frame(in: .named("VStackCS")).origin)).padding(.bottom)
            
            Text("Named HStackCS").bold()
            Text(stringFormat(for : g.frame(in: .named("HStackCS")).origin)).padding(.bottom)
        }
    }
    
    var body: some View {
        
        HStack {
            Rectangle().fill(.yellow).frame(width: 30)
            
            VStack {
                Rectangle().fill(.blue).frame(height: 200)
                
                GeometryReader {
                    // 레이아웃을 위한 뷰와 실제 컨텐츠 분리
                    self.contents(geometry: $0)
                }
                .background(.green)
                .border(.red, width: 4)
                
                
            }.coordinateSpace(name : "VStackCS") // VStack 좌표 공간에 이름 부여
        }.coordinateSpace(name : "HStackCS") // HStack 좌표공간에 이름 부여
    }
}

#Preview {
    GeometryProxyPractice()
}
