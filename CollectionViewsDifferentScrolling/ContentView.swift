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
        NavigationStack {
            // 1 section: displaying in line
            
            Text("Planets in line:")
                .font(.title2)
                .frame( maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                .padding(5)
            
            ScrollView(.horizontal) {
                LazyHStack(spacing: 10.0){
                    ForEach(imagesForSV) { image in
                        CellWithSimpleImage(imageForCell: image)
                    }
                }
            }
        .frame(height:200)
        .padding(.horizontal, 5)
            
            // 2 section: displayind in row with descriptions
            
            Section {
                ScrollView {
                    ForEach(imagesForSV) { image in
                        CellDescriptionAndImage(imageForCell: image)
                    }
            
                }
            } header: {
                Text("Planets with description")
                    .font(.title2)
                    .frame( maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                    .padding()
            }

            // 3 section: displays small pictures like a grid
            
            Section {
                ScrollView {
                   GridView()
                }
            } header: {
                Text("Planets in grid")
                    .font(.title2)
                    .frame( maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                    .padding()
            }

        Spacer()
                .navigationTitle("Planets")
                .navigationBarTitleDisplayMode(.inline)
            
        }
           
    }
       

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
