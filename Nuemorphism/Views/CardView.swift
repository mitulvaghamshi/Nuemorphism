//
//  CardView.swift
//  Nuemorphic
//
//  Created by mitulvaghamshi on 2021-11-25.
//

import SwiftUI

struct CardView: View {
    private let color1 = #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)
    private let color2 = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
    private let color3 = #colorLiteral(red: 0.8980392157, green: 0.9333333333, blue: 1, alpha: 1)
    
    var body: some View {
        ZStack {
            Color.lairBackgroundGray.edgesIgnoringSafeArea(.all)
            VStack {
                Text("Hello World")
                    .font(.system(size: 20, weight: .semibold, design: .rounded))
                    .foregroundColor(.black)
                    .frame(width: 150, height: 70)
                    .background(InnerShadow())
                    .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                    .shadow(color: Color(color1), radius: 20, x: 20, y: 20)
                    .shadow(color: Color(color2), radius: 20, x: -20, y: -20)
            }
            .frame(width: 300, height: 400)
            .background(Color.lairBackgroundGray)
            .cornerRadius(16)
            .shadow(color: Color(color1), radius: 10, x: 10, y: 10)
            .shadow(color: Color(color2), radius: 10, x: -10, y: -10)
        }
    }
    
    private struct InnerShadow: View {
        private let color4 = #colorLiteral(red: 0.7608050108, green: 0.8164883852, blue: 0.9259157777, alpha: 1)
        private let color5 = #colorLiteral(red: 0.9019607843, green: 0.9294117647, blue: 0.9882352941, alpha: 1)
        
        var body: some View {
            ZStack{
                Color(color4)
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .foregroundColor(.white)
                    .blur(radius: 4)
                    .offset(x: -8, y: -8)
                RoundedRectangle(cornerRadius: 16, style: .continuous)
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(color5), Color.white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .padding(2)
                    .blur(radius: 2)
            }
        }
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
