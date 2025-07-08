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
                ScrollView {
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce dignissim lorem non nibh tincidunt, ac tincidunt elit suscipit. Vestibulum commodo, est imperdiet pharetra suscipit, dolor mi iaculis tortor, et hendrerit velit enim sit amet ante. Quisque ut maximus tortor. Ut aliquam augue sem, lobortis commodo arcu sagittis in. Donec et elit vestibulum arcu aliquam ultrices at id diam. Curabitur rutrum, metus at dapibus feugiat,")
                        .font(.custom("Jetbrains Mono", size: 18, relativeTo: .body ))
                }
            }
        }
    }
}

#Preview {
    MenuItemView()
}
