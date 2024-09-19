//
//  GridView.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 09.09.24.
//

import SwiftUI

struct GridView: View {
    let imageForGrid = DisplayedImage.createArrayOfImages()
    
    private let columns = [GridItem(.adaptive(minimum: 150), spacing: 15, alignment: .center)]
    
    var body: some View {
        ScrollView() {
            LazyVGrid(columns: columns) {
                ForEach(imageForGrid) { image in
                    NavigationLink (destination: FunFactCell(imageForCell: image)) {
                        CellWithSimpleImage(imageForCell: image) }
                }
            }
            .frame(width: 350 , height: .infinity)
            .padding()
        }
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
