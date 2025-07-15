//
//  OrderItemView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 15/07/25.
//

import SwiftUI

struct OrderItemView: View {
    @Binding var orderItem: OrderItem
    @State private var quantity = 1
    @State private var doubleIngredient = false
    @State var pizzaCrust: PizzaCrust
    @State private var name: String = ""
    @State private var comment: String = ""
    
    init(orderItem: Binding<OrderItem>){
        self._orderItem = orderItem
        self.pizzaCrust = orderItem.item.crust.wrappedValue
    }
    var body: some View {
        VStack {
            TextField("Name", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Toggle(isOn: $doubleIngredient){
                Text("Double Ingredients \(doubleIngredient ? "Yes" : "No" )")
            }
            Stepper(value: $quantity, in: 1 ... 10) {
                Text("\(quantity) \(quantity == 1 ? "pizza" : "pizzas")")
            }
            Picker(selection: $pizzaCrust) {
                ForEach(PizzaCrust.allCases, id: \.self){ crust in
                    Text(crust.rawValue).tag(crust)
                }
            }label: {
                Text("Pizza Crust")
            }
            .pickerStyle(MenuPickerStyle())
            //.pickerStyle(SegmentedPickerStyle())
            //.pickerStyle(WheelPickerStyle())
            VStack {
                Text("Comments")
                TextEditor(text: $comment)
            }
            .clipShape(RoundedRectangle(cornerRadius: 5 ))
            .shadow(radius: 1)
            Spacer()
        }
        .padding()
    }
}

#Preview {
    OrderItemView(orderItem: .constant(testOrderItem))
}
