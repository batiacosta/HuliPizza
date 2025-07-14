//
//  ContentView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 3/07/25.
//

import SwiftUI

struct ContentView: View {
    var menu: [MenuItem]
    @StateObject var orders:OrderModel = OrderModel()
    @State private var showOrders: Bool = false
    @State private var selectedItem: MenuItem = noMenuItem
    
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
                .environment(\.colorScheme, .light)
            
            HStack {
                Button{
                    showOrders.toggle()
                } label: {
                    Text("\(orders.orderItems.count) orders")
                    Spacer()
                    Image(systemName: showOrders ? "cart" : "menucard")
                        .font(.title2)
                }
            }
            .foregroundStyle(.link).font(.title2)
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            }else{
                MenuItemView(selectedItem: $selectedItem, orders: orders)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                MenuView(menu: menu, selectedItem: $selectedItem)
            }
            Spacer()
        }
        .padding()
        .environmentObject(orders) // orders are available in all the subviews of this VStack
// Just for learning purposes. Background looks UGLY
//        .background(.linearGradient(
//            colors: [Color("Surf"), Color("Sky"), .cyan.opacity(0.1)],
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing
//        ))

    }
}

#Preview {
    ContentView(menu: MenuModel().menu)
}



