//
//  DisplayedImage.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 04.09.24.
//

import Foundation

struct DisplayedImage: Identifiable {
    
    let name: String
    let imageName : String
    let description : String
    let id = UUID()
    
    static func createArrayOfImages() -> [DisplayedImage] {
        [DisplayedImage(name: "Mercury",imageName: "mercury",description: "Mercury is the smallest planet in our solar system and the nearest to the Sun. Mercury is only slightly larger than Earth's Moon. Its surface is covered in tens of thousands of impact craters."),
         
        DisplayedImage(name: "Venus",imageName: "venus", description: "Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth."),
        DisplayedImage(name: "Earth", imageName: "earth", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being an ocean world."),
        DisplayedImage(name: "Mars", imageName: "mars", description: "Mars is the fourth planet from the Sun, and the seventh largest. It's the only planet we know of inhabited entirely by robots."),
        DisplayedImage(name: "Jupiter", imageName: "jupiter", description: "Jupiter is the fifth planet from the Sun, and the largest in the solar system – more than twice as massive as the other planets combined."),
        DisplayedImage(name: "Saturn", imageName: "saturn", description: "Saturn is the sixth planet from the Sun and the second largest planet in our solar system. Adorned with a dazzling system of icy rings."),
         DisplayedImage(name: "Uranus", imageName: "uranus", description: "Uranus is the seventh planet from the Sun, and it's the third largest planet in our solar system – about four times wider than Earth."),
         DisplayedImage(name: "Neptune", imageName: "neptune", description: "Neptune is the eighth and most distant planet from the Sun. It's the fourth largest, and the first planet discovered with math.")]
    }
    
}
