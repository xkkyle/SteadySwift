//
//  ListView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/20/26.
//

import SwiftUI

struct BasicListView: View {
    var body: some View {
        
        // UIKit에서는 UITableView에서 내용을 표시할 뷰를 Cell이라고 불렀음
        // SwiftUI에서는 List의 Row라고 불림
        List {
            Text("1")
            Text("2")
            Text("3")
            Text("4")
            Text("5")
            Text("6")
            Text("7")
            Text("8")
            Text("9")
            Text("10")
            Text("11")
        }
        
        // 리스트의 사용용도
        // - 정적 콘텐츠보다는 동적 콘텐츠를 위함
        List {
            Text("Large Title").font(.largeTitle)
            Image(systemName: "cart")
            Circle().frame(width: 150, height: 150)
            Color(.red).frame(width: 120, height: 120)
        }
        
        // 동적 콘텐츠
        // - Range<Int> 사용
        // - Half-Open Range Operator(Range<Int>) 사용
        // 0...A, A...,...A 사용 시 오류 발생
        
        List(0..<100) {
            Text("\($0)") // trailing closure의 first parameter
        }
        
        
        List(0..<100) {
            
                Text("\($0)") + Text("\($0)")
            
        }
        
        // RandomAccessCollection
        // id 매개변수 : Hashable 프로토콜을 준수하는 프로퍼티 지정 가능
        // - Hashable을 준수하는 경우 \.self 로 지정
        // - Swift의 대부분의 기본 타입은 Hashable 프로토콜을 준수
        List(["A", "B", "C", "D", "E"], id: \.self) {
            Text("\($0)")
        }
        
        // 사용자가 정의한 커스텀 타입의 경우, Hashable 프로토콜을 채택하는 방법을 지정해야 함
        List([User(name: "kyle", age: 20), User(name: "steve", age: 40)], id: \.name) {
            Text("\($0.name)-\($0.age!)")
        }
        
        // Identifiable 프로토콜 채택으로, id 프로퍼티에 값을 주는 것을 생략 가능
        
        // struct User: Identifiable { ... }
        List([User(name: "kyle", age: 20), User(name: "steve", age: 40)]) {
            Text("\($0.name)")
        }
    }
    
}

#Preview {
    BasicListView()
}
