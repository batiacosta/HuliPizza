//
//  HeaderView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//
import SwiftUI

struct HeaderView: View {
    var body: some View {
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
        }
    }
}

#Preview {
    HeaderView()
}
