//
//  ShapeProtocols.swift
//  Shape
//
//  Authors: Suraj Aireddy and Aneel Gillan
//

protocol Shape {
    var area: Double { get }
    var perimeter: Double { get }
    func description()
}

protocol Polygon {
    var numSides: Int { get }
}
