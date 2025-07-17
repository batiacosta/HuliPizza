//
//  MenuGridView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 17/07/25.
//

import SwiftUI

struct MenuGridView: View {
    var menu: [MenuItem]
    @State var selectedItem: MenuItem = noMenuItem
    let columnLayout = Array(repeating: GridItem(  ), count: 3)
    var body: some View {
        VStack {
            Text(selectedItem.name)
            ScrollView {
                LazyVGrid(columns: columnLayout) {
                    ForEach(menu){item in
                        MenuItemTileView(menuItem: item)
                    }
                }
            }
        }
    }
}

#Preview {
    MenuGridView(menu: MenuModel().menu)
}
