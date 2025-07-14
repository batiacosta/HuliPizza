//
//  ContentView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 3/07/25.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1, 2, 3 ,4, 5]
    @State private var showOrders: Bool = false
    var body: some View {
        VStack {
            HeaderView()
                .shadow(radius: 5)
            
            Button{
                showOrders.toggle()
            } label: {
                Image(systemName: showOrders ? "cart" : "menucard")
                    .font(.title2)
            }
            if showOrders {
                OrderView(orders: orders)
                    .cornerRadius(10)
            }else{
                MenuItemView()
                    .cornerRadius(10)
                    .shadow(radius: 5)
                MenuView()
            }
            Spacer()
        }
        .padding()
// Just for learning purposes. Background looks UGLY
//        .background(.linearGradient(
//            colors: [Color("Surf"), Color("Sky"), .cyan.opacity(0.1)],
//            startPoint: .topLeading,
//            endPoint: .bottomTrailing
//        ))

    }
}

#Preview {
    ContentView()
}



