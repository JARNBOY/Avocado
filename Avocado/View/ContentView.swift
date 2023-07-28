//
//  ContentView.swift
//  Avocado
//
//  Created by Papon Supamongkonchai on 23/7/2566 BE.
//

import SwiftUI

struct ContentView: View {
    // MARK: - PROPERTIES
    var headers: [Header] = headersData
    var facts: [Fact] = factsData
    
    // MARK: - BODY
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //MARK: - HEADER
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(headers) { header in
                            HeaderView(header: header)
                        }
                    }
                }
                
                
                // MARK: - RECIPE CARDS
                
                
                
                //MARK: - DISHES
                Text("Avocado Recipes")
                  .fontWeight(.bold)
                  .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                // MARK: - AVOCADO FACTS
                
                Text("Avocado Facts")
                  .fontWeight(.bold)
                  .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                  HStack(alignment: .top, spacing: 60) {
                    ForEach(facts) { item in
                      FactsView(fact: item)
                    }
                  }
                  .padding(.vertical)
                  .padding(.leading, 60)
                  .padding(.trailing, 20)
                }
                
                //MARK: - FOOTER
                VStack(alignment: .center, spacing: 20) {
                  Text("All About Avocados")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                    
                  Text("Everything you wanted to know about avocados but were too afraid to ask.")
                    .font(.system(.body, design: .serif))
                    .multilineTextAlignment(.center)
                    .foregroundColor(Color.gray)
                    .frame(minHeight: 60)
                }
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
  func body(content: Content) -> some View {
    content
      .font(.system(.title, design: .serif))
      .foregroundColor(Color("ColorGreenAdaptive"))
      .padding(8)
  }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            headers: headersData,
            facts: factsData
        )
    }
}
