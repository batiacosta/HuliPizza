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
            ZStack{
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("HuliPizza")
                    .background()
            }
            Image(systemName: orders.isEmpty ? "cart" : "cart.circle.fill" )
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            ScrollView{
                ForEach(orders, id: \.self) { order in
                    HStack(alignment: .firstTextBaseline) {
                        Text("Your order intem \(order)")
                        Spacer()
                        Text(19.90, format: .currency(code: "USD"))
                    }
                }
            }
            
            VStack {
                Image(systemName: "rectangle.fill").font(.largeTitle)
                Text("Description ")
                Text("Margharita")
            }
            
            ScrollView {
                ForEach(1 ... 25, id: \.self){ item in
                    HStack(alignment: .top, spacing: 15){
                        Image(systemName: "1.circle.fill").font(.largeTitle)
                        VStack (alignment: .leading){
                            Text("Description ")
                            Text("Margharita")
                        }
                    }
                }
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
