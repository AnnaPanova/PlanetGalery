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
            .shadow(radius: 10.0)
            .scaledToFit()
          
        
            .overlay(alignment: .bottomTrailing, content:{
                Text(imageForCell.name)
                    .foregroundColor(.white)
                    .font(.title2)
                    .fontWeight(.bold)
                    .padding()

            }
        )
        
    }
}


struct CellForHorizontalStack_Previews: PreviewProvider {
    static var previews: some View {
        CellForHorizontalStack(imageForCell: DisplayedImage(name: "Saturn", imageName: "saturn", description: ""))
    }
}

