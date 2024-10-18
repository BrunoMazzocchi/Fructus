//
//  FruitRowView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 17/10/24.
//

import SwiftUI

struct FruitRowView: View {
    let fruit: Fruit
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(radius: 3, x:2, y:2)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors ),
                        startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(
        fruit: fruitsData.first!
    )
}
