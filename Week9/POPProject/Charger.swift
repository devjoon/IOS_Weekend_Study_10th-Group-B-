//
//  Charger.swift
//  POPProject
//
//  Created by Kiseok on 11/18/23.
//

struct Charger: Chargeable {
    var maximumWattPerHour: WattPerHour
    
    mutating func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour {
        if chargeableWattPerHour < maximumWattPerHour {
            maximumWattPerHour = chargeableWattPerHour
            return maximumWattPerHour
        }
        
        return maximumWattPerHour
    }
}

var appleWatchCharger = Charger(maximumWattPerHour: 5)
var iPhoneCharger = Charger(maximumWattPerHour: 18)
var iPadCharger = Charger(maximumWattPerHour: 30)
var macBookCharger = Charger(maximumWattPerHour: 96)
var fastMacBookCharger = Charger(maximumWattPerHour: 106)
