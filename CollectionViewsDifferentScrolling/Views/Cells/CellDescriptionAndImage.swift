//
//  CellDescriptionAndImage.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 05.09.24.
//

import SwiftUI

struct CellDescriptionAndImage: View {
    let imageForCell : DisplayedImage
    
    var body: some View {
        HStack {
            Image(imageForCell.imageName)
                .resizable()
                .cornerRadius(15)
                .scaledToFit()
                
                .shadow(radius: 10)
            Text(imageForCell.description)
                .frame(alignment: .center)
                .font(.headline)
                .padding(.horizontal, 5)
        }
        .frame( maxWidth: 350,  maxHeight: 350, alignment: .leading)
        .padding(8)
       
    }

}

struct CellDescriptionAndImage_Previews: PreviewProvider {
    static var previews: some View {
        CellDescriptionAndImage(imageForCell: DisplayedImage(name: "Mars", imageName: "mars", description: "Some scary description of Mars wit many-many letters.......", funFactTitle: "Title", funFact: "Fun fact"))
    }
}
