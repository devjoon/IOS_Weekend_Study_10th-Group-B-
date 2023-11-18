//
//  main.swift
//  POPProject
//
//  Created by hyunMac on 11/18/23.
//

import Foundation

typealias WattPerHour = Int
typealias Watt = Int

struct MacBook {
    var limitFullChargingWatt: Watt
    var batteryVolume: Watt
    var fullBatteryVolume: Watt = 100
    
    init(limitFullChargingWatt: Watt, batteryVolume: Watt) {
        self.limitFullChargingWatt = limitFullChargingWatt
        self.batteryVolume = batteryVolume
    }
    
    mutating func chargeBattery(charger: Chargeable) {
        let chargingTime = 1
        var fullchargingTime = 0
        while fullBatteryVolume > batteryVolume {
            sleep(UInt32(chargingTime))
            fullchargingTime += chargingTime
            batteryVolume += charger.maximumWattPerHour
        }
        print("충전에 걸린시간은 \(fullchargingTime) 입니다.")
    }
}
