//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI
struct OrderView: View {
    @ObservedObject var orders: OrderModel
    var body: some View {
        VStack {
            ZStack (alignment: .top){
                ScrollView{
                    ForEach($orders.orderItems) { order in
                        OrderRowView(order: order)
                            .padding(4)
                            .background(
                                .regularMaterial,
                                in: RoundedRectangle(cornerRadius: 10)
                            )
                            .shadow(radius: 10)
                            .padding(.bottom, 5)
                            .padding([.leading, .trailing], 7)
                    }
                }
                .padding(.top, 80
                )
                HStack (alignment: .center){
                    Text("Order Pizza")
                        .font(.title)
                        .fontWeight(Font.Weight.semibold)
                        .shadow(radius: 10)
                    Spacer()
                    Label{
                        Text(orders.orderTotal, format: .currency(code: "USD"))
                    }
                    icon:{
                        Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
                    }
                    .font(.title2)
                    Spacer()
                }
                .padding()
                .background(.ultraThinMaterial)
            }
            Button("Delete order"){
                if !orders.orderItems.isEmpty{
                    orders.removeLast()
                }
            }.padding()
                .background(.regularMaterial, in: Capsule())
                .shadow(radius: 5)
                .padding(7)
        }.background(.blue.opacity(0.1))
    }
}

#Preview {
    OrderView(orders: OrderModel())
}
