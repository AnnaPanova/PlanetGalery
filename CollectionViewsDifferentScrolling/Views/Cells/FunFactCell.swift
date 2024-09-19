//
//  FunFactCell.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 13.09.24.
//

import SwiftUI

struct FunFactCell: View {
     
    let imageForCell : DisplayedImage
    
    var body: some View {
        VStack(alignment: .center) {
            Text("Fun fact about \(imageForCell.name)")
                .font(.system(size: 36))
                .multilineTextAlignment(.center)
                .fontWeight(.bold)
            Image(imageForCell.imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(25)
                .shadow(color: .black, radius: 30)
                .padding()
            Text("\(imageForCell.funFactTitle)")
                .fontWeight(.bold)
                .font(.system(size: 26))
                .multilineTextAlignment(.center)
                .padding()
            Text("\(imageForCell.funFact)")
                .font(.system(size: 20))
                .multilineTextAlignment(.center)
                .padding()
               
        }
        Spacer()
    }
}

struct FunFactCell_Previews: PreviewProvider {
    static var previews: some View {
        FunFactCell(imageForCell: DisplayedImage(name: "Mars", imageName: "mars", description: "Some scary description of Mars wit many-many letters.......", funFactTitle: "Very long multiline Title that discribes fun fact ", funFact: "Fun fact bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla blabla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla bla"))
    }
}
