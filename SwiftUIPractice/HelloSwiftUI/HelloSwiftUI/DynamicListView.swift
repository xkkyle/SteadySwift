//
//  DynamicListView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 5/20/26.
//

import SwiftUI

struct DynamicListView: View {
    let drinks: [String] = ["Coke", "Sprite", "Soda", "Apple Juice"]
    let fruits: [String] = ["Apple", "Banana", "Cactus"]
    
    
    // 계산 속성(Computed Property)
    // Swift에서는 계산 속성, 함수 내부에서 단순 지역 변수/상수 선언 가능
    // return List {} 로 뷰를 반환
    var body: some View {
        let titles: [String] = ["Fruits", "Drinks"]
        let data = [drinks, fruits]
        
//        List {
//            Text("Drinks").font(.largeTitle)
//            
//            ForEach(drinks, id: \.self) {
//                Text($0)
//            }
//            
//            Spacer()
//            
//            Image(systemName: "cart").padding().background(RoundedRectangle(cornerRadius: 8).strokeBorder()).onTapGesture {
//                print("Hello")
//            }
//            
//            Text("Fruits").font(.largeTitle)
//            
//            ForEach(fruits, id: \.self) {
//                Text($0)
//            }
//        }
        
        return List {
            ForEach(data.indices) { index in
                Section (
                    header: Text(titles[index]).font(.title),
                    footer:
                        HStack {
                            Spacer()
                            Text("\(data[index].count)건")
                        }
                ){
                    ForEach(data[index], id: \.self) {
                        Text("\($0)")
                    }
                }
            }
        }
    }
}

#Preview {
    DynamicListView()
}
