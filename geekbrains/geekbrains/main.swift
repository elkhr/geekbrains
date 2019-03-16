//
//  main.swift
//  geekbrains
//
//  Created by light on 03/03/2019.
//  Copyright © 2019 light. All rights reserved.
//

/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 6. Вывести сами объекты в консоль.
 */


import Foundation

enum Window {
    case open, close
}

enum Engine {
    case on, off
}

enum Weel {
    case simpleWeel, sportWeel
}

protocol Car {
    var color: String { get }
    var enginePower: Int { get }
    var windowState: Window { get set }
    var engineState: Engine { get set }
    mutating func engineOn ()
    mutating func windowClose ()
    }

extension Car {
    mutating func engineOn() {
        if (engineState == .off) {
        (engineState = .on)
        }
    }
    mutating func windowClose () {
        if (windowState == .open) {
            windowState = .close
        }
    }
}

class SportCar : Car {
    var color: String
    var enginePower: Int
    var windowState: Window
    var engineState: Engine
    var trailer: Bool
    var weelCondition: Weel
        init(color: String, enginePower: Int, windowState: Window, engineState: Engine, trailer: Bool, weelCondition: Weel){
        self.color = color
        self.enginePower = enginePower
        self.windowState = windowState
        self.engineState = engineState
        self.trailer = trailer
        self.weelCondition = weelCondition
    }
}


class TrunkCar : Car {
    var color: String
    var enginePower: Int
    var windowState: Window
    var engineState: Engine
    var trailer: Bool
    var weelCondition: Weel
        init(color: String, enginePower: Int, windowState: Window, engineState: Engine, trailer: Bool, weelCondition: Weel){
        self.color = color
        self.enginePower = enginePower
        self.windowState = windowState
        self.engineState = engineState
        self.trailer = trailer
        self.weelCondition = weelCondition
    }
}

extension TrunkCar: CustomStringConvertible {
    var description: String {
        return "состояние окон грузовика: \(windowState)"
    }
}

extension SportCar: CustomStringConvertible {
    var description: String {
        return "состояние двигателя спорткара: \(engineState)"
    }
}

var sport = SportCar (color: "red", enginePower: 900, windowState: .open, engineState: .off, trailer: false, weelCondition: .sportWeel)
print(sport)
sport.engineOn()
print(sport)

var trunk = TrunkCar (color: "blue", enginePower: 300, windowState: .open, engineState: .off, trailer: true, weelCondition: .simpleWeel)
print(trunk)
trunk.windowClose()
print(trunk)

