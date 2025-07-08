//
//  HeaderView.swift
//  HuliPizza
//
//  Created by David Acosta Laverde on 7/07/25.
//
import SwiftUI

struct HeaderView: View {
    var body: some View {
        ZStack{
            Image("surfBanner")
                .resizable()
                .scaledToFit()
            Text("HuliPizza")
                .background()
        }
    }
}

#Preview {
    HeaderView()
}
