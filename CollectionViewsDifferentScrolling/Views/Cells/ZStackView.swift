//
//  ZStackView.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 13.09.24.
//

import SwiftUI

struct ZStackView: View {
    let imagesForSV = DisplayedImage.createArrayOfImages()

    // method that finds index of image, for calculating padding
    private func indexForItem(array: [DisplayedImage]!, item: DisplayedImage) -> Int {
        var indexForReturn = array.firstIndex(of:item)
        return indexForReturn!
    }
    
    // method that finds amount of images, for calculation frame of ZStack
    private func amountOfImages(array: [DisplayedImage]!) -> Int {
        let amount = array.count
        return amount
    }
    
    var body: some View {
        ZStack(alignment: .top) {
            ForEach(imagesForSV) { image in
                NavigationLink(destination: FunFactCell(imageForCell: image)) {
                    CellForZStack(imageForCell: image)
                }

                // calculation of padding that helps makes all images visible in stack
                    .padding(CGFloat(80+80*indexForItem(array: imagesForSV, item: image)))
            }
        }
        // frame to cuting empty space onn bottom of stack
       .frame( maxHeight: CGFloat(300+(80*amountOfImages(array: imagesForSV))), alignment: .top )
    }
}

struct ZStackView_Previews: PreviewProvider {
    static var previews: some View {
        ZStackView()
    }
}
