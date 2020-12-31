//
//  main.swift
//  home-job5
//
//  Created by Petr Fedoseev on 31.12.2020.
//

import Foundation

protocol objectOne {
    var carOne : String {get}
}
extension objectOne {
    var release : Int {return self as! Int}
}

class Music: objectOne {
    var musician : String
    var songName : String
    
    var release: Int
    
    init(musician: String, songName: String, release: Int) {
        self.musician = musician
        self.songName = songName
        self.release = release
    }
    
    var carOne: String {
        return ("'\(songName)'" + " ") + musician
    }
    
}

let myFavoriteSong = Music(musician: "Bitting Elbows", songName: "Love Song", release: 2011)
print(myFavoriteSong.carOne)

extension Music: CustomStringConvertible {
    var description : String {
        return "My favorite song is \(carOne), release: \(release)"
    }
}

print(myFavoriteSong.description)

class Car: objectOne {
    var brand: String
    var model: String
    var release: Int

    init(brand: String, model: String, release: Int) {
        self.brand = brand
        self.model = model
        self.release = release
    }
    
    var carOne: String {
        return (brand + " ") + model
    }
}

let mySuperCar = Car(brand: "Daewoo", model: "Nexia", release: 2003)
print(mySuperCar.carOne)

extension Car: CustomStringConvertible {
    var description : String {
        return "My car is \(carOne), release: \(release)"
    }
}

print(mySuperCar.description)
