//
//  LayoutProperty.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 6/24/26.
//

import SwiftUI

struct LayoutProperty: View {
    var body: some View {
        // no layout priority
        HStack {
            Color.red
            Color.yellow
            Color.blue
        }.frame(height: 40)
        
        
        // has Priority
        HStack(spacing: 0) {
            Color.red.layoutPriority(1)
            Color.green
            Color.blue.layoutPriority(1)
        }.frame(height: 40)
        
        // with min, max
        HStack {
            Color.red.layoutPriority(1)
            Color.green.frame(minWidth: 30)
            Color.blue.frame(maxWidth: 50).layoutPriority(1)
        }.frame(height: 40)
        
        // 고정크기 frame
        HStack {
            Color.red.frame(width: 50)
            Color.green.layoutPriority(1)
            Color.blue.frame(maxWidth :50 ).layoutPriority(1)
        }.frame(height: 40)
    }
}

#Preview {
    LayoutProperty()
}
