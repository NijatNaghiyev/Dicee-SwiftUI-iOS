//
//  DiceView.swift
//  Dicee-SwiftUI-iOS
//
//  Created by Nijat Naghiyev on 26.01.25.
//

import SwiftUI

struct DiceView: View {
    let diceNumber: Int
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
            .aspectRatio(1, contentMode: .fit)
            .padding()
    }
}

#Preview {
    DiceView(diceNumber: 1)
        .previewLayout(.sizeThatFits)
}
