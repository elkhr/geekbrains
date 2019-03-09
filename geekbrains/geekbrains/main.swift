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
    init(type : CarType, mark : String, year : Int, emptyTrunk : Int, engine : EngineState, window : WindowState, fullTrunk : Int) {
        self.type = type
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
        fullTrunk += value
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
    init(type : CarType, mark : String, year : Int, emptyTrunk : Int, engine : EngineState, window : WindowState, fullTrunk : Int) {
        self.type = type
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
            fullTrunk += value
        }
}

var car = Car(type: .car, mark: "AUDI", year: 2019, emptyTrunk: 100, engine: .off, window: .close, fullTrunk: 90)
print("Свойства легкового авто:", car.type, car.mark, car.year, car.emptyTrunk, car.engine, car.window, car.fullTrunk)
car.cargo(value: 10)
car.changeEngineState()
car.changeWindowsState()
print("Свойства легкового авто после выполнения действий:", car.type, car.mark, car.year, car.emptyTrunk, car.engine, car.window, car.fullTrunk)

var truck = Truck(type: .truck, mark: "Volvo", year: 2014, emptyTrunk: 1000, engine: .on, window: .open, fullTrunk: 500)
print("Свойства грузовика:", truck.type, truck.mark, truck.year, truck.emptyTrunk, truck.engine, truck.window, truck.fullTrunk)
truck.cargo(value: 300)
truck.changeEngineState()
truck.changeWindowsState()
print("Свойства грузовика после выполнения действий:",truck.type, truck.mark, truck.year, truck.emptyTrunk, truck.engine, truck.window, truck.fullTrunk)
