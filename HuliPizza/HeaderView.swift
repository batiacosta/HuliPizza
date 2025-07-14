//
//  HeaderView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//
import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders : OrderModel
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing){
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("HuliPizza")
                    .font(.title)
                //.foregroundStyle(Color("Sky"))
                    .fontWeight(Font.Weight.bold)
                    .foregroundStyle(.thickMaterial)
                    .shadow(radius: 5)
                    .padding(5)
            }
            Label{
                Text(orders.orderTotal, format: .currency(code: "USD"))
            }icon:{
                Image(systemName: orders.orderItems.isEmpty ? "cart" : "cart.circle.fill")
            }
            .font(.title3)
        }
        .background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
