//
//  Circle.swift
//  Shape
//
//  Created by Suraj Aireddy on 12/6/23.
//

class Circle: Shape {
    var radius: Double
    
    init(radius: Double) {
        self.radius = radius
    }
    
    func description() {
        print("Circle with radius: \(radius), area: \(area), perimeter: \(perimeter)")
    }
}

extension Circle {
    var area: Double {
        return (Double.pi * radius * radius * 100).rounded() / 100
    }
    
    var perimeter: Double {
        return (2 * Double.pi * radius * 100).rounded() / 100
    }
}
