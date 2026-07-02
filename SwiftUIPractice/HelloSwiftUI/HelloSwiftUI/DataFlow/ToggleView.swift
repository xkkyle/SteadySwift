//
//  ToggleView.swift
//  HelloSwiftUI
//
//  Created by KWON HYUKMIN on 7/2/26.
//

import SwiftUI

struct ToggleView: View {
    @State private var isFavorite : Bool = true
    @State private var count = 0
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30) {
            Toggle(isOn: $isFavorite) {
                Text("is Favorite : \(isFavorite.description)")
            }
            Stepper("Count: \(count)", value: $count)
        }.padding(30)
    }
}

#Preview {
    ToggleView()
}
