//
//  main.swift
//  geekbrains
//
//  Created by light on 03/03/2019.
//  Copyright © 2019 light. All rights reserved.
//

import Foundation

/*
 Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.
 Описать пару его наследников TrunkCar и SportCar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.
 Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет TrunkCar, а какие – SportCar. Добавить эти действия в перечисление.
 В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.
 Создать несколько объектов каждого класса. Применить к ним различные действия.
 Вывести значения свойств экземпляров в консоль.
 */

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
    let transmission: Transmission
    
    init(color: String, enginePower: Int, transmission: Transmission) {
        self.color = color
        self.enginePower = enginePower
        self.transmission = transmission
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
    func action (_ action: Turbo){
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
    func action (_ action: HookTrailer){
        if hooktrailer != .hook {
            hooktrailer = .hook
        } else {hooktrailer = .unhooked}
    }
}

var sport = SportCar (color: "red", enginePower: 900, transmission: .manual, engine: .rotor, turbo: .off)
print ("Свойства спорткара: цвет:", sport.color, ", мощность (л/с):", sport.enginePower, ", тип трансмиссии:", sport.transmission, ", включение турбо-режима:", sport.turbo)

sport.action(.off)
print ("Свойства спорткара после действия: цвет:", sport.color, ", мощность (л/с):", sport.enginePower, ", тип трансмиссии:", sport.transmission, ", включение турбо-режима:", sport.turbo)


var truck = TruckCar (color: "blue", enginePower: 250, transmission: .auto, trailer: true, hooktrailer: .unhooked)
print ("Свойства грузовика: цвет:", truck.color, ", мощность (л/с):", truck.enginePower, ", тип трансмиссии:", truck.transmission, ", наличие прицепа:", truck.trailer, ", сцепка прицепа:", truck.hooktrailer)

truck.action(.unhooked)
print ("Свойства грузовика после действия: цвет:", truck.color, ", мощность (л/с):", truck.enginePower, ", тип трансмиссии:", truck.transmission, ", наличие прицепа:", truck.trailer, ", сцепка прицепа:", truck.hooktrailer)
