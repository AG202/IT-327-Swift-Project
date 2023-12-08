//
//  main.swift
//  IT327
//
//  Created by Suraj Aireddy and Peter Lam on 12/5/23.
//

import Foundation

class PizzaOrder{
    var orderQueue: Queue<String> = Queue();
    
    func placeOrder(option: Int){
        var pizzaName: String
        
        //Switch Statement to choose which pizza you want.
        switch option{
        case 1:
            pizzaName = "Cheese Pizza"
        case 2:
            pizzaName = "Pepperoni Pizza"
        case 3:
            pizzaName = "Vegetarian Pizza"
        default:
            print("Invalid. Please type 1, 2, or 3")
            return
        }
        
        orderQueue.enqueue(pizzaName)
        print("\(pizzaName) added to the order queue.")
    }
    func displayOrderQueue(){
        print("Current Order Queue")
        orderQueue.display()
    }
    //Ability to create a Queue of any type T
    struct Queue<T> {
        //Initializes an array of any type T as an empty Array.
        private var items: [T] = []
        
        //iOS 15 Book by Matt Neuberg
        //Chapter 4 Under Enum methods
        //Takes an item of type T and appends it to the end of the array.
        mutating func enqueue(_ item: T){
            items.append(item)
        }
        //Method to return an optional value of type T, if the array is empty, NIL.
        mutating func dequeue() -> T? {
            //Checks if the array is empty, if it is then return nil else
            //remove the first element and return it.
            return items.isEmpty ? nil : items.removeFirst()
        }
        //Method to print elements in array.
        func display(){
            for item in items{
                print("- \(item)")
            }
        }
    }
        
}
func main() {
    let pizzaOrder = PizzaOrder()

    while true {
        print("\nPizza Ordering Menu:")
        print("1. Margherita Pizza")
        print("2. Pepperoni Pizza")
        print("3. Vegetarian Pizza")
        print("4. Exit")

        print("Enter your choice (1, 2, 3, or 4):")
        if let choice = readLine(), let option = Int(choice) {
            switch option {
            case 1, 2, 3:
                pizzaOrder.placeOrder(option: option)
                pizzaOrder.displayOrderQueue()
            case 4:
                print("Exiting the pizza ordering system.")
                return
            default:
                print("Invalid option. Please choose 1, 2, 3, or 4.")
            }
        } else {
            print("Invalid input. Please enter a valid number.")
        }
    }
}

// Run the program
main()
