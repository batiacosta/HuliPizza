//
//  MenuItemTileView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 17/07/25.
//

import SwiftUI
struct MenuItemTileView: View {
    var menuItem: MenuItem
    var body: some View {
        VStack{
            Group{
                if let image = UIImage(named: "\(menuItem.id)_sm"){
                    Image(uiImage: image)
                        .resizable()
                        .scaledToFit()
                }else{
                    Image("surfboard_sm")
                        .resizable()
                        .scaledToFit()
                }
            }
            Text(menuItem.name).font(.caption).padding(3)
        }
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(radius: 10, x:2, y:2)
        
    }
}

#Preview {
    MenuItemTileView(menuItem: testMenuItem)
}
