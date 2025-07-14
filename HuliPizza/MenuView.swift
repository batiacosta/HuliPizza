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
        List (MenuCategory.allCases, id: \.self) { category in
            Section {
                ForEach(menu.filter({$0.category == category})){ item in
                    MenuRowView(item: item)
                }
            } header: {
                Text(category.rawValue)
            }
        }
    }
}

#Preview {
    MenuView(menu: MenuModel().menu)
}
