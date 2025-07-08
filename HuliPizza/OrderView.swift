//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI
struct OrderView: View {
    var orders: [Int]
    var body: some View {
        VStack {
            Label{
                Text(59.99, format: .currency(code: "USD"))
            }
            icon:{
                Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
            }
            HStack {
                //  Label("Cart", systemImage: "cart")  -> Simple label
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self) { order in
                    OrderRowView(order: order)
                        .padding(.bottom, 5)
                        .padding([.leading, .trailing], 7)
                }
            } 
        }
        .background(.blue.opacity(0.1))
    }
}

#Preview {
    OrderView(orders: [1, 2, 3 ,4, 5])
}
