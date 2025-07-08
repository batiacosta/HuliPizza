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
        HStack(alignment: .firstTextBaseline) {
            Text("Your order intem \(order)")
            Spacer()
            Text(19.90, format: .currency(code: "USD"))
        }
    }
}

#Preview {
    OrderRowView(order: 1)
}
