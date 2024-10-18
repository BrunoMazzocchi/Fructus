//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 17/10/24.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    
    @State var isAnimatingImage: Bool = false
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomLeading)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

#Preview (traits: .fixedLayout(width: 375, height: 440)){
    FruitHeaderView(fruit: fruitsData.first!)
}
