//
//  MenuItemView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI
struct MenuItemView: View {
    @State private var hasItems: Bool = false
    var body: some View {
        VStack {
            if let image = UIImage(named: "0_lg"){
                Image(uiImage: image)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    //.clipShape(RoundedRectangle(cornerRadius: 10))
            }else{
                Image("surfboard_lg")
            }
            VStack (alignment: .leading) {
                Text("Margharita")
                    .font(.title)
                    .fontWeight(Font.Weight.semibold)
                    .foregroundStyle(Color("Surf"))
                    //.frame(width: 300, height: 300) For learning purposes
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim lorem non nibh tincidunt, ac tincidunt elit suscipit. Vestibulum commodo, est imperdiet pharetra suscipit, dolor mi iaculis tortor, et hendrerit velit enim sit amet ante. Quisque ut maximus tortor. Ut aliquam augue sem, lobortis commodo arcu sagittis in. Donec et elit vestibulum arcu aliquam ultrices at id diam. Curabitur rutrum, metus at dapibus feugiat,")
                        .font(.custom("Jetbrains Mono", size: 18, relativeTo: .body ))
                }
                Button{
                    hasItems = true
                }label: {
                    Spacer()
                    Text(12.99, format: .currency(code: "USD"))
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
    MenuItemView()
}
