//
//  CategoryResults.swift
//  ecommerce
//
//  Created by Vincent Salinas on 7/3/22.
//

import SwiftUI

struct CategoryResults: View {
    @EnvironmentObject var cartManager: CartManager
    
    var modelData = products
    
    let columns: [GridItem] = [GridItem(.flexible())]
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("RESULTS")
                .font(.title2)
                .bold()
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(modelData, id: \.id) { product in
                        NavigationLink(destination: ProductSVC(product: product).environmentObject(cartManager)) {
                            CategoryItemHelper(product: product)
                        }
                    }
                }
            }
        }
        .padding([.leading, .trailing], 17)
    }
}

struct CategoryResults_Previews: PreviewProvider {
    static var previews: some View {
        CategoryResults()
    }
}