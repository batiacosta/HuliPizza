//
//  MenuView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI

struct MenuView: View {
    var menu: [MenuItem]
    var body: some View {
        ScrollView {
            ForEach(menu){ item in
                MenuRowView(item: item)
            }
        }
    }
}

#Preview {
    MenuView(menu: MenuModel().menu)
}
