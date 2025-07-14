//
//  HeaderView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//
import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var orders : OrderModel
    @Environment(\.verticalSizeClass) var vSizeClass: UserInterfaceSizeClass?
    var body: some View {
        VStack {
            if(vSizeClass ?? .regular) != .compact{
                ZStack(alignment: .bottomTrailing){
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("HuliPizza")
                        .font(.title)
                    //.foregroundStyle(Color("Sky"))
                        .fontWeight(Font.Weight.bold)
                        .foregroundStyle(.thickMaterial)
                        .shadow(radius: 5)
                        .padding(5)
                }
            }else {
                HStack(alignment: .bottom){
                    Image("surfBanner")
                        .resizable()
                        .scaledToFit()
                    Text("HuliPizza")
                        .font(.title)
                        .fontWeight(Font.Weight.bold)
                        .foregroundStyle(.primary)
                        .shadow(radius: 5)
                        .padding(5)
                    Spacer()
                }
            }
        }
        .background(.ultraThinMaterial)
    }
}

#Preview {
    HeaderView().environmentObject(OrderModel())
}
