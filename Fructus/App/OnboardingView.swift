//
//  OnboardingView.swift
//  Fructus
//
//  Created by Владислав Тихонов on 10.07.2022.
//

import SwiftUI

struct OnboardingView: View {
    // PROPERTIES
    
    var fruits: [Fruit] = fruitsData

    // BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            } // LOOP
        } // TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitsData)
    }
}
