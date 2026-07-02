//
//  BindingSubview.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 7/2/26.
//

import SwiftUI

struct BindingSubview: View {
    @Binding var name: String
    var body: some View {
        Text(name)
    }
}
