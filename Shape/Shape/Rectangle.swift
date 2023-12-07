//
//  Rectangle.swift
//  Shape
//
//  Authors: Suraj Aireddy and Aneel Gillan
//

class Rectangle: Shape, Polygon {
    var length: Double
    var width: Double
    
    init(length: Double, width: Double) {
        self.length = length
        self.width = width
    }
    
    var numSides: Int {
        return 4
    }
    
    func description() {
        print("Square with length: \(length), width: \(width), area: \(area), perimeter: \(perimeter)")
    }
}

extension Rectangle {
    var area: Double {
        return (length * width * 100).rounded() / 100
    }
    
    var perimeter: Double {
        return ((2*length + 2*width)*100).rounded() / 100
    }
}
