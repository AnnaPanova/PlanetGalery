//
//  CellForZStack.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 12.09.24.
//

import SwiftUI

struct CellForZStack: View {
 
        let imageForCell : DisplayedImage
        
        var body: some View {
           Image(imageForCell.imageName)
                .resizable()
                .frame(width: 300, height: 300)
                .border(.gray, width: 3)
                .shadow(color: .gray, radius: 30)
                .scaledToFit()
              
            
                .overlay(alignment: .topLeading, content:{
                    Text(imageForCell.name)
                        .foregroundColor(.white)
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()

                }
            )
            
        }
    }


struct CellForZStack_Previews: PreviewProvider {
    static var previews: some View {
        CellForZStack(imageForCell: DisplayedImage(name: "Saturn", imageName: "saturn", description: ""))
    }
}
