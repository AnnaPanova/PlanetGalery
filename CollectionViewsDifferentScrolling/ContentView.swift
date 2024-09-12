//
//  ContentView.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 04.09.24.
//

import SwiftUI
import Foundation

struct ContentView: View {
    
    let imagesForSV = DisplayedImage.createArrayOfImages()
   
   
    private func indexForItem(array: [DisplayedImage]!, item: DisplayedImage) -> Int {
        var indexForReturn = array.index(of:item)
        return indexForReturn!
    }
    
    var body: some View {
        NavigationStack {
            
            // 4 Section: displays ZStack
            Section {
                ScrollView {
                    ZStack(alignment: .top) {
                        ForEach(imagesForSV) { image in
                        CellForZStack(imageForCell: image)
                                .padding(CGFloat(80+80*indexForItem(array: imagesForSV, item: image)))
                        }
                    }
                }
                
                    } header: {
                        Text("Planets in stack")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .frame( maxWidth: .infinity, maxHeight: 10, alignment: .leading)
                            .padding()
                    }
            
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
