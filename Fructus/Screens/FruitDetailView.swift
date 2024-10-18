//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 17/10/24.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // HEADER
                FruitHeaderView(fruit: fruit)
                
                VStack(alignment: .leading, spacing: 20) {
                    // Title
                    Text(fruit.title)
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(fruit.gradientColors.first!);
                    
                    // Headline
                    
                    Text(fruit.headline)
                        .font(.headline)
                        .multilineTextAlignment(.leading)
                    
                    // Nutrients
                    
                    FruitNutrientsView(fruit: fruit)
                    
                    // Description
                    
                    Text(fruit.description)
                        .multilineTextAlignment(.leading)
                    
                    
                    // Link
                    SourceLinkView()
                        .padding(.top, 10)
                        .padding(.bottom, 40)
                } //: VStack
                .padding(.horizontal, 20)
                .frame(maxWidth: 640, alignment: .center)
            }
            .navigationBarTitle(fruit.title, displayMode: .inline)
            .navigationBarHidden(true)
            
            .edgesIgnoringSafeArea(.top)
        }
        
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    FruitDetailView(fruit: fruitsData.first!)
}
