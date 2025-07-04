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
            
            Text("Order Pizza!")
                .font(.title)
            HStack(alignment: .firstTextBaseline) {
                Text("Your order intem")
                Spacer()
                Text("$00.00")
            }
            HStack(alignment: .top, spacing: 15){
                Image("0_sm")
                Text("Margharita")
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
