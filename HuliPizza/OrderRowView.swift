//
//  OrderRowView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//

import SwiftUI

struct OrderRowView: View {
    var order: Int
    var body: some View {
        VStack{
            HStack{
                Text("Your order intem \(order)")
                Spacer()
            }
            HStack(alignment: .firstTextBaseline) {
                Text(1, format: .number)
                Text(19.90, format: .currency(code: "USD"))
                Spacer()
                Text(19.90, format: .currency(code: "USD"))
                    .fontWeight(Font.Weight.semibold)
            }
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
