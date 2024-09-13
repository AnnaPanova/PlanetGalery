//
//  DisplayedImage.swift
//  CollectionViewsDifferentScrolling
//
//  Created by Anna Panova on 04.09.24.
//

import Foundation

struct DisplayedImage: Identifiable, Equatable {
    
    let name: String
    let imageName : String
    let description : String
    let funFactTitle: String
    let funFact: String
    let id = UUID()
    
    static func createArrayOfImages() -> [DisplayedImage] {
        [DisplayedImage(name: "Mercury",imageName: "mercury",description: "Mercury is the smallest planet in our solar system and the nearest to the Sun. Mercury is only slightly larger than Earth's Moon. Its surface is covered in tens of thousands of impact craters.", funFactTitle: "Mercury has the most craters in the Solar System", funFact: "Because Mercury’s atmosphere is so weak, the planet has nothing to protect it against meteor impacts. This has filled its surface of crater impacts and has given Mercury a very similar look to our Moon."),
         
        DisplayedImage(name: "Venus",imageName: "venus", description: "Venus is the second planet from the Sun. It is a terrestrial planet and is the closest in mass and size to its orbital neighbour Earth.", funFactTitle: "A day on Venus is longer than a year", funFact: "It takes Venus longer to rotate once on its axis than to complete one orbit of the Sun. That’s 243 Earth days to rotate once – the longest rotation of any planet in the Solar System – and only 224.7 Earth days to complete an orbit of the Sun."),
         
         DisplayedImage(name: "Earth", imageName: "earth", description: "Earth is the third planet from the Sun and the only astronomical object known to harbor life. This is enabled by Earth being an ocean world.",funFactTitle: "The Moon is drifting away from Earth",funFact: "The Moon is gradually drifting away from Earth at a rate of approximately 4 cm per year. This phenomenon is caused by the Moon pulling on Earth’s oceans creating tidal forces that produce a bulge of water on the side of Earth facing the Moon. This bulge in turn creates a gravitational pull on the Moon, causing it to accelerate slightly and move further away from Earth. Over time, this process has caused the Moon to move farther away from Earth each year. This gradual drift is not noticeable on a day-to-day basis, but over millions of years, it can have significant effects on Earth's rotation. "),
         
        DisplayedImage(name: "Mars", imageName: "mars", description: "Mars is the fourth planet from the Sun, and the seventh largest. It's the only planet we know of inhabited entirely by robots.", funFactTitle: "Mars Has Intense Dust Storms", funFact: "Not only are they the largest in the solar system, but they can cover the whole planet, reach speeds of 125 miles per hour, and last for months! "),
         
        DisplayedImage(name: "Jupiter", imageName: "jupiter", description: "Jupiter is the fifth planet from the Sun, and the largest in the solar system – more than twice as massive as the other planets combined.", funFactTitle: "Jupiter has rings", funFact: "Saturn and Uranus aren’t the only planets with rings. Jupiter has them too but they are so faint we can’t really see them."),
         
        DisplayedImage(name: "Saturn", imageName: "saturn", description: "Saturn is the sixth planet from the Sun and the second largest planet in our solar system. Adorned with a dazzling system of icy rings.", funFactTitle: "Saturn has more moons than any other planet", funFact: "20 new moons were discovered in 2019 bring the total to 82, 3 more than Jupiter"),
         
         DisplayedImage(name: "Uranus", imageName: "uranus", description: "Uranus is the seventh planet from the Sun, and it's the third largest planet in our solar system – about four times wider than Earth.", funFactTitle: "It was the first planet to be discovered through a telescope.", funFact: "It was the first planet found with a telescope. Other planets like Venus could be seen in the night sky without a telescope however Uranus cannot."),
         
         DisplayedImage(name: "Neptune", imageName: "neptune", description: "Neptune is the eighth and most distant planet from the Sun. It's the fourth largest, and the first planet discovered with math.", funFactTitle: "Neptune is Blue", funFact: "Neptune is made up of methane – the same gas that makes up some of our trumps. The type of methane on Neptune gives it its blue colour.")]
    }
    
}
