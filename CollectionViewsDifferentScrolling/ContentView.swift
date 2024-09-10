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
            ScrollView {
            Text("Planets in line:")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                .frame( maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                .padding()
            
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
                Text("Planets description")
                    .font(.largeTitle)
                    .fontWeight(.bold)
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
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .frame( maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                    .padding()
            }

        Spacer()
                .navigationTitle("Planets")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
           
    }
       

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
