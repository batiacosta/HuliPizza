//
//  StatusBarView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 14/07/25.
//

import SwiftUI

struct StatusBarView: View {
    @Binding var showOrders: Bool
    @ObservedObject var orders: OrderModel
    var body: some View {
        HStack {
            Button{
                showOrders.toggle()
            } label: {
                Spacer()
                Image(systemName: showOrders ? "cart" : "menucard")
                    .font(.title2)
                Text("\(orders.orderItems.count) orders")
                Spacer()
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
                Text(orders.orderTotal, format: .currency(code: "USD"))
                Spacer()
            }
        
            .font(.title3)
            Spacer()
        }
        .foregroundStyle(.link).font(.title2)
    }
}

#Preview {
    StatusBarView(showOrders: .constant(false), orders: OrderModel())
}
