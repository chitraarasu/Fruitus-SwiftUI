//
//  OnboardingView.swift
//  Fruitus
//
//  Created by kirshi on 4/13/23.
//

import SwiftUI

struct OnboardingView: View {
    var body: some View {
        TabView{
            ForEach(fruitsData[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
