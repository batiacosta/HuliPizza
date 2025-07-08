//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI
struct MenuItemView: View {
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
                    .cornerRadius(10)
                    //.clipShape(RoundedRectangle(cornerRadius: 10))
            }else{
                Image("surfboard_lg")
            }
            Text("Description ")
            Text("Margharita")
        }
    }
}

#Preview {
    MenuItemView()
}
