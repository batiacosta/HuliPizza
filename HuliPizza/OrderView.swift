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
        ZStack (alignment: .top){
            ScrollView{
                ForEach(orders, id: \.self) { order in
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
                    Text(59.99, format: .currency(code: "USD"))
                }
                icon:{
                    Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill")
                }
                .font(.title2)
                
                Spacer()
            }
            .padding()
            .background(.ultraThinMaterial)
            
        }
        .background(.blue.opacity(0.1))
    }
}

#Preview {
    OrderView(orders: [1, 2, 3 ,4, 5])
}
