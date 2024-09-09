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
        LazyVGrid(columns: columns) {
            ForEach(imageForGrid) { image in
              CellWithSimpleImage(imageForCell: image)
            }
        }
        .padding()
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
