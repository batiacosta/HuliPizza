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
            ForEach(1 ... 6, id: \.self){ index in
                Image(systemName: (index <= rating) ? "fork.knife.circle.fill" : "fork.knife.circle")
                    .foregroundStyle((index <= rating) ? .yellow : .gray)
            }
            
            
        }
    }
}

#Preview {
    RatingsView(rating: 5)
}
