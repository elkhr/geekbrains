//
//  main.swift
//  geekbrains
//
//  Created by light on 03/03/2019.
//  Copyright © 2019 light. All rights reserved.
//

import Foundation

//Описать несколько структур – любой легковой автомобиль и любой грузовик.
//Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.
//Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.
//Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.
// Инициализировать несколько экземпляров структур. Применить к ним различные действия.
// Вывести значения свойств экземпляров в консоль.

enum CarType {
    case car
    case truck
}

enum EngineState {
    case on
    case off
}

enum WindowState {
    case open
    case close
}

struct Car {
    var type: CarType
    var mark : String
    var year : Int
    var emptyTrunk : Int
    var engine : EngineState
    var window : WindowState
    var fullTrunk : Int
    init(mark : String, year : Int, emptyTrunk : Int, engine : EngineState, window : WindowState, fullTrunk : Int) {
        type = .car
        self.mark = mark
        self.year = year
        self.emptyTrunk = emptyTrunk
        self.engine = engine
        self.window = window
        self.fullTrunk = fullTrunk
    }
    
    mutating func changeEngineState(){
        engine = engine == .on ? .off : .on
    }
    mutating func changeWindowsState(){
        window = window == .open ? .close : .open
    }
    mutating func cargo(value: Int) {
        emptyTrunk += value
    }
    init(){
        type = .car
        mark = "AUDI"
        year = 2019
        emptyTrunk = 59
        engine = .off
        window = .close
        fullTrunk = 90
    }
}

struct Truck {
    var type: CarType
    var mark : String
    var year : Int
    var emptyTrunk : Int
    var engine : EngineState
    var window : WindowState
    var fullTrunk : Int
    mutating func changeEngineState(){
        engine = engine == .on ? .off : .on
    }
    mutating func changeWindowsState(){
        window = window == .open ? .close : .open
    }
    mutating func cargo(value: Int) {
            emptyTrunk += value
        }
}

var car = Car(mark: "AUDI", year: 2019, emptyTrunk: 59, engine: .off, window: .close, fullTrunk: 90)

print(car)

//var audi = Car (mark: "AUDI", year: 2014, emptyTrunk: 50, engine: .on, window: .close, fullTrunk: 100)
//var volvo = Truck (type: .truck, mark: "Volvo", year: 2019, emptyTrunk: 500, engine: .off, window: .open, fullTrunk: 1000)
