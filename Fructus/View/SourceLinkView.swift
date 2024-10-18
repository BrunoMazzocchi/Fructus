//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Bruno Mazzocchi on 18/10/24.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content source")
                Spacer()
                Link("Wikipedia", destination: URL(string: "https://en.wikipedia.org/wiki/SwiftUI")!)
                Image(systemName: "arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview (traits: .sizeThatFitsLayout) {
    SourceLinkView()
        .padding()
}
