//
//  main.swift
//  geekbrains
//
//  Created by light on 03/03/2019.
//  Copyright © 2019 light. All rights reserved.
//

import Foundation

/*1. Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
 2. Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.*/

enum CarStackError: Error {
    case invalidSelection
    case outOfStock
    }

struct Item {
    var count: Int
    let mark: Mark
}

struct Mark{
    let name: String
}
// Вендинговая машина
class CarStack {
    var inventory = [
        "Ferrary": Item(count: 25, mark: Mark(name: "Ferrary")),
        "Bently": Item(count: 5, mark: Mark(name: "Bently"))
    ]
    func carCheck(itemNamed name: String) throws -> Mark {
        guard let item = inventory[name] else {
            throw CarStackError.invalidSelection
        }
        guard item.count > 0 else {
            throw CarStackError.outOfStock
        }
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        return newItem.mark
    }
}

let carStack = CarStack()


do {
    _ = try carStack.carCheck(itemNamed: "ОКА")
} catch CarStackError.invalidSelection {
    print("У нас на складе только Ferrary и Bently")
}


do {
    _ = try carStack.carCheck(itemNamed: "ОКА")
} catch let error {
    print(error.localizedDescription)
}
