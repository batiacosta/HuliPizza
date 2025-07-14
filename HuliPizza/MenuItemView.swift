//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI
struct MenuItemView: View {
    @State private var hasItems: Bool = false
    @Binding var selectedItem: MenuItem
    var body: some View {
        VStack {
            if let image = UIImage(named: "\(selectedItem.id)_lg"){
                Image(uiImage: image)
                    .cornerRadius(10)
                    .shadow(radius: 5)
            }else{
                Image("surfboard_lg")
            }
            VStack (alignment: .leading) {
                Text(selectedItem.name)
                    .font(.title2)
                    .fontWeight(Font.Weight.semibold)
                    .foregroundStyle(Color("Surf"))
                ScrollView {
                    Text(selectedItem.description)
                        .font(.custom("Jetbrains Mono", size: 18, relativeTo: .body ))
                }
                Button{
                    hasItems = true
                }label: {
                    Spacer()
                    Text(selectedItem.price, format: .currency(code: "USD"))
                        .foregroundStyle(.white)
                        .padding(5)
                    Image(systemName: hasItems ? "cart.badge.plus.fill" : "cart.badge.plus" )
                        .foregroundStyle(.white)
                    Spacer()
                }.clipShape(.buttonBorder)
                    .background(.red, in: Capsule())
                    .padding(5)
            }
        }
        .background(.thinMaterial)
        .contentMargins(5)
    }
}

#Preview {
    MenuItemView(selectedItem: .constant(testMenuItem))
}
