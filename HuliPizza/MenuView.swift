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
                if let image = UIImage(named: "\(item)_sm"){
                    Image(uiImage: image).font(.largeTitle)
                }
                else{
                    Image(systemName: "circle.badge.questionmark")
                }
                HStack(alignment: .top, spacing: 15){
                    Image(systemName: "1.circle.fill").font(.largeTitle)
                    VStack (alignment: .leading){
                        Text("Description ")
                        Text("Margharita")
                    }
                }
            }
        }
    }
}

#Preview {
    MenuView()
}
