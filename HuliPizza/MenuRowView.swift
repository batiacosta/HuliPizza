//
//  MenuRowView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI

struct MenuRowView: View {
    var item: Int
    var body: some View {
        HStack(alignment: .top, spacing: 15){
            if let image = UIImage(named: "\(item)_sm"){
                Image(uiImage: image).font(.largeTitle)
                    .clipShape(Circle())
                    .padding(.trailing, -25)
                    .padding(.leading, -15)
            }
            else{
                Image(systemName: "circle.badge.questionmark")
            }
            VStack (alignment: .leading){
                Text("Margharita")
                RatingsView(rating: 4)
            }
            Spacer()
        }
    }
}

#Preview {
    MenuRowView(item: 1)
}
