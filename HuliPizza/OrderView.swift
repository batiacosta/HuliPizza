//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI
struct OrderView: View {
    var orders:[Int] = [1, 2, 3 ,4, 5]
    var body: some View {
        VStack {
            HeaderView()
            Label{
                Text(59.99, format: .currency(code: "USD"))
            }
            icon:{
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
        }
    }
}

#Preview {
    OrderView()
}
