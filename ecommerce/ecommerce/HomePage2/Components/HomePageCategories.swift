//
//  HomePageCategories.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/5/22.
//

import SwiftUI

struct HomePageCategories: View {
    var title: String
    var description: String
    var fgColor: Color
    var bgColor: Color
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.title)
                .bold()
                .padding([.trailing], 15)
            Text(description)
                .font(.title3)
                .padding([.trailing], 15)
            ScrollView(.horizontal) {
                LazyHStack {
                    ForEach(0..<products.count) { index in
                            HomePageProduct(product: products[index])
                    }
                }
            }
        }
        .padding([.leading, .top, .bottom], 15)
        .foregroundColor(fgColor)
        .background(bgColor)
    }
}

struct HomePageCategories_Previews: PreviewProvider {
    static var previews: some View {
        HomePageCategories(title: "title", description: "description", fgColor: Color.white, bgColor: Color.blue)
    }
}