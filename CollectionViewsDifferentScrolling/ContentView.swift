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
   
    var body: some View {
        NavigationStack {
         
            // 1 section: displaying planets in line
            ScrollView {
                Section {
                    ScrollView(.horizontal) {
                        LazyHStack(spacing: 0.5){
                            ForEach(imagesForSV) { image in
                                NavigationLink(destination: FunFactCell(imageForCell: image)){ CellWithSimpleImage(imageForCell: image)
                                }
                            }
                        }
                        .padding(.horizontal, 8)
                    }
                    .frame(width: 400, height:200)
                   
                } header: {
                    Text("Planets in line:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame( maxWidth: .infinity, maxHeight: 10, alignment: .top)
                        .padding()
                }
                
                // 2 section: displayind planets in column with descriptions
                
                Section {
                    ScrollView {
                        ForEach(imagesForSV) { image in
                            NavigationLink (destination: FunFactCell(imageForCell: image)) {
                                CellDescriptionAndImage(imageForCell: image)
                            }
                        }
                    }
                } header: {
                    Text("Planets description")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame( maxWidth: .infinity, maxHeight: 10, alignment: .top)
                        .padding()
                }
                
                // 3 section: displays planets by small pictures in grid
                
                Section {
                    GridView()
                } header: {
                    Text("Planets in grid")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame( maxWidth: .infinity, maxHeight: 10, alignment: .top)
                        .padding()
                }
                
                // 4 Section: displays planets in stack
                
                Section {
                    ScrollView {
                        ZStackView()
                    }
                } header: {
                    Text("Planets in stack")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .frame( maxWidth: .infinity, maxHeight: 10, alignment: .top)
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
