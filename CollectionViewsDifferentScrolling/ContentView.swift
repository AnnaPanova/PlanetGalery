//
//  ContentView.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 04.09.24.
//

import SwiftUI

struct ContentView: View {
    
    let imagesForSV = DisplayedImage.createArrayOfImages()
    
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 10.0){
                ForEach(imagesForSV) { image in
                   CellForHorizontalStack(imageForCell: image)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
