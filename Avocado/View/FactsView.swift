//
//  FactsView.swift
//  Avocado
//
//  Created by Papon Supamongkonchai on 28/7/2566 BE.
//

import SwiftUI

struct FactsView: View {
    var body: some View {
        ZStack {
            Text(factsData[0].content)
                .padding(.leading, 55)
                .padding(.trailing  , 10)
                .padding(.vertical  , 3)
                .frame(width: 300, height: 135, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .leading, endPoint: .trailing))
                .cornerRadius(12)
                .lineLimit(6)
                .multilineTextAlignment(.leading)
                .font(.footnote)
                .foregroundColor(Color.white)
            
            Image(factsData[0].image)
                .resizable()
                .frame(width: 66, height: 66, alignment: .center)
                .clipShape(Circle())
                .background(
                  Circle()
                    .fill(Color.white)
                    .frame(width: 74, height: 74, alignment: .center)
                )
                .background(
                  Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color("ColorGreenMedium"), Color("ColorGreenLight")]), startPoint: .trailing, endPoint: .leading))
                    .frame(width: 82, height: 82, alignment: .center)
                )
                .background(
                  Circle()
                    .fill(Color("ColorAppearanceAdaptive"))
                    .frame(width: 90, height: 90, alignment: .center)
                )
                .offset(x: -150)
        }
    }
}

struct FactsView_Previews: PreviewProvider {
    static var previews: some View {
        FactsView()
    }
}
