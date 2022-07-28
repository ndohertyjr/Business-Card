//
//  ContentView.swift
//  Business Card
//
//  Created by user220431 on 7/28/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack {
            Color(red: 0.51, green: 0.93, blue: 0.93, opacity: 1.00)
                .ignoresSafeArea()
            VStack {
                Image("neil")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150.0, height: 150.0, alignment: .center)
                    .clipShape(Circle())
                    .overlay(Circle()
                        .stroke(
                            Color(
                                red: 0.70,
                                green: 0.75,
                                blue: 0.76,
                                opacity: 1.00),
                            lineWidth: 5))
                Text("Neil Doherty")
                    .font(Font.custom("Satisfy-Regular", size: 50))
                    .bold()
                
                Text("Application Development Engineer")
                    .foregroundColor(Color(red: 0.18, green: 0.20, blue: 0.21))
                    .font(.system(size: 22))
                Divider()
                    .frame(width: 1.0, height: 50.0, alignment: .center)
               
                InfoView(symbol: "phone.fill", infoText: "Phone: 123-456-7890")              
                InfoView(symbol: "envelope", infoText: "Email: myemail@gmail.com")
            }
        }
    }
}

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
    static let screenSize = UIScreen.main.bounds.size
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


