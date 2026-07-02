//
//  StateAndBindingView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 7/2/26.
//

import SwiftUI

struct StateAndBindingView: View {
    @State private var name: String = "홍길동"
    var body: some View {
        Text("\(name)")
        BindingSubview(name: self.$name)
    }
}

#Preview {
    StateAndBindingView()
}
