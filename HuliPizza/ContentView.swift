//
//  ContentView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 3/07/25.
//

import SwiftUI

struct ContentView: View {
    var orders:[Int] = [1, 2, 3 ,4, 5]
    var showOrders: Bool = false
    var body: some View {
        VStack {
            HeaderView()
            if showOrders {
                OrderView(orders: orders)
            }else{
                MenuItemView()
                MenuView()
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}



