//
//  main.swift
//  geekbrains
//
//  Created by light on 03/03/2019.
//  Copyright © 2019 light. All rights reserved.
//

import Foundation

/*
 1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.
 2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)
 3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
 */
protocol Fruits {
    var weight: Double {get set}
}
    
class Apple: Fruits {
    var weight: Double
    init(weight: Double) {
        self.weight = weight
    }
}
class Orange: Fruits {
    var weight: Double
    init(weight: Double) {
        self.weight = weight
    }
}
    
struct Stack <T> {
    var elements: [T] = []
    mutating func push(_ element: T) {
        elements.append(element)
    }
    mutating func pop() -> T? {
        return elements.removeLast()
    }
    
    /*subscript(position: Int) -> T? {
        if position >= 0 && position < elements.count {
            return elements[position]
        }
        return nil
*/
}



var fruitsInThePocket = Stack <Fruits>()
fruitsInThePocket.push(Apple(weight: 100))
fruitsInThePocket.push(Apple(weight: 120))
fruitsInThePocket.push(Apple(weight: 150))
fruitsInThePocket.push(Orange(weight: 200))
fruitsInThePocket.push(Orange(weight: 220))
print(fruitsInThePocket.elements)



/*var totalWeight : Double {
    var weight = 0.0
    for _ in elements {
        weight += elements.weight
    }
    return weight
}
*/
