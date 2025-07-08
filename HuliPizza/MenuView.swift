//
//  MenuView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        ScrollView {
            ForEach(1 ... 25, id: \.self){ item in
                MenuRowView(item: item)
            }
        }
    }
}

#Preview {
    MenuView()
}
