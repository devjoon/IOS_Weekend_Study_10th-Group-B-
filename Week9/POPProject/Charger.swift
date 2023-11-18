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


