//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 18/10/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Water", "Sugar", "Fiber"]
    
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors.first)
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
            .foregroundColor(.black)
        }
    }
}

#Preview  (traits: .fixedLayout(width: 375, height: 480)) {
    FruitNutrientsView(fruit: fruitsData.first!)
        .preferredColorScheme(.dark)
        .padding()
}
