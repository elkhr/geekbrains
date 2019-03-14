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
    var engineState: Engine { get set}
    }

class sportCar : Car {
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


protocol changeWindowState {
    func changeWindowState() -> Window
}

extension sportCar : changeWindowState {
    func changeWindowState() -> Window {
        if windowState != .open {
        windowState = .close
        } else {windowState = .open}
    }
}

var sport = sportCar (color: "red", enginePower: 900, windowState: .open, engineState: .off, trailer: false, weelCondition: .sportWeel)



/*class trunkCar : Car {
 var color: String = "red"
 var enginePower: Int = 100
 var windowState: Window = .open
 var engineState: Engine = .on
 var trailer: Bool = true
 var weelCondition: Weel = .simpleWeel
 }*/




/*
 enum Transmission {
 case manual, auto
 }
 
 enum Engine {
 case rotor, V
 }
 
 enum Turbo {
 case on, off
 }
 
 enum HookTrailer {
 case hook, unhooked
 }
 
 class Car {
 let color: String
 let enginePower: Int
 var transmission: Transmission
 
 init(color: String, enginePower: Int, transmission: Transmission) {
 self.color = color
 self.enginePower = enginePower
 self.transmission = transmission
 }
 func action (){
 if transmission != .manual {
 transmission = .manual
 } else {transmission = .auto}
 }
 }
 
 class SportCar : Car {
 var engine: Engine = .rotor
 var turbo: Turbo = .off
 init(color: String, enginePower: Int, transmission: Transmission, engine: Engine, turbo: Turbo){
 super.init (color: color, enginePower: enginePower, transmission: transmission)
 self.engine = engine
 self.turbo = turbo
 }
 override func action (){
 if turbo != .on {
 turbo = .on
 } else {turbo = .off}
 }
 }
 
 
 class TruckCar : Car {
 var trailer: Bool = true
 var hooktrailer: HookTrailer = .unhooked
 init(color: String, enginePower: Int, transmission: Transmission, trailer : Bool, hooktrailer: HookTrailer){
 super.init (color: color, enginePower: enginePower, transmission: transmission)
 self.trailer = trailer
 self.hooktrailer = hooktrailer
 }
 override func action (){
 if hooktrailer != .hook {
 hooktrailer = .hook
 } else {hooktrailer = .unhooked}
 }
 }
 
 var sport = SportCar (color: "red", enginePower: 900, transmission: .manual, engine: .rotor, turbo: .off)
 print ("Свойства спорткара: цвет:", sport.color, ", мощность (л/с):", sport.enginePower, ", тип трансмиссии:", sport.transmission, ", включение турбо-режима:", sport.turbo)
 
 sport.action()
 print ("Свойства спорткара после действия: цвет:", sport.color, ", мощность (л/с):", sport.enginePower, ", тип трансмиссии:", sport.transmission, ", включение турбо-режима:", sport.turbo)
 
 
 var truck = TruckCar (color: "blue", enginePower: 250, transmission: .auto, trailer: true, hooktrailer: .unhooked)
 print ("Свойства грузовика: цвет:", truck.color, ", мощность (л/с):", truck.enginePower, ", тип трансмиссии:", truck.transmission, ", наличие прицепа:", truck.trailer, ", сцепка прицепа:", truck.hooktrailer)
 
 truck.action()
 print ("Свойства грузовика после действия: цвет:", truck.color, ", мощность (л/с):", truck.enginePower, ", тип трансмиссии:", truck.transmission, ", наличие прицепа:", truck.trailer, ", сцепка прицепа:", truck.hooktrailer)

 */


