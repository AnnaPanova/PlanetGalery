//
//  CellForHorizontalStack.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 05.09.24.
//

import SwiftUI

struct CellForHorizontalStack: View {
    let imageForCell : DisplayedImage
    
    var body: some View {
       Image(imageForCell.imageName)
            .resizable()
            .cornerRadius(25.0)
            .frame(maxWidth: 350.0, maxHeight: 350.0)
            .scaledToFit()
        
    }
}


struct CellForHorizontalStack_Previews: PreviewProvider {
    static var previews: some View {
        CellForHorizontalStack(imageForCell: DisplayedImage(name: "Saturn", imageName: "saturn", description: ""))
    }
}

