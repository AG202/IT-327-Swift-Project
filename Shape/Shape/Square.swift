//
//  Square.swift
//  Shape
//
//  Authors: Suraj Aireddy and Aneel Gillan
//

typealias Length = Double

class Square: Shape, Polygon {
    var side: Length
    
    init (side: Length) {
        self.side = side
    }
    
    var numSides: Int {
        return 4
    }
    
    func description() {
        print("Square with side length: \(side), area: \(area), perimeter: \(perimeter)")
    }
}

extension Square {
    var area: Double {
        return (side * side * 100).rounded() / 100
    }
    
    var perimeter: Double {
        return (4 * side * 100).rounded() / 100
    }
}
