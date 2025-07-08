//
//  ContentView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 3/07/25.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1, 2, 3 ,4, 5]
    var body: some View {
        VStack {
            OrderView()
            HStack {
                //  Label("Cart", systemImage: "cart")  -> Simple label
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self) { order in
                    OrderRowView(order: order)
                }
            }
            
            MenuItemView()
            
            MenuView()
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}



