//
//  RatingsView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 8/07/25.
//

import SwiftUI

struct RatingsView: View {
    var rating: Int
    var body: some View {
        HStack {
            ForEach(1 ... 6, id: \.self){index in
                if rating >= index {
                    Image(systemName: "fork.knife.circle.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.yellow)
                }else{
                    Image(systemName: "fork.knife.circle")
                        .font(.largeTitle)
                        .foregroundStyle(.gray)
                }
            }
            
            
        }
    }
}

#Preview {
    RatingsView(rating: 5)
}
