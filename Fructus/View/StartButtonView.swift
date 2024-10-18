//
//  StartButtonView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 17/10/24.
//

import SwiftUI

struct StartButtonView: View {
    var action: () -> Void
    var body: some View {
        Button(action: {
           action()
        }) {
            HStack (spacing: 8) {
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
        }
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule().strokeBorder(.white, lineWidth: 1.25)
        )
        .accentColor(.white)
    }
    
}

#Preview {
    StartButtonView(action: {})
}
