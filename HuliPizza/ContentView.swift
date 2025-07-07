//
//  ContentView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 3/07/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
        
            
            ZStack{
                Image("surfBanner")
                    .resizable()
                    .scaledToFit()
                Text("HuliPizza")
                    .background()
            }
            
            HStack {
                Text("Order Pizza")
                    .font(.title)
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text("Your order intem")
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
            }
            HStack(alignment: .top, spacing: 15){
                Image("0_sm")
                VStack (alignment: .leading){
                    Text("Description ")
                    Text("Margharita")
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
