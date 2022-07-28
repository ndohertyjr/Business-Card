//
//  InfoView.swift
//  Business Card
//
//  Created by user220431 on 7/28/22.
//

import SwiftUI

struct InfoView: View {
    let symbol: String
    let infoText: String
    
    var body: some View {
        RoundedRectangle(cornerRadius: UIScreen.screenHeight / 5)
            .fill(Color(
                red: 0.70,
                green: 0.75,
                blue: 0.76,
                opacity: 1.00))
            .frame(width: (UIScreen.screenWidth - 25.0), height: 40.0, alignment: .center)
            .overlay(HStack {
                Image(systemName: symbol)
                    .foregroundColor(.red)
                
                Text(verbatim: infoText)
                    .frame(width: 300.0, height: 20.0, alignment: .leading)
            })
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(symbol: "phone.fill", infoText: "Test preview text")
            .previewLayout(.sizeThatFits)
    }
}
