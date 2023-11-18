//
//  main.swift
//  POPProject
//
//  Created by hyunMac on 11/18/23.
//

import Foundation

typealias WattPerHour = Int
typealias Watt = Int

var appleWatchCharger = Charger(maximumWattPerHour: 5)
var iPhoneCharger = Charger(maximumWattPerHour: 18)
var iPadCharger = Charger(maximumWattPerHour: 30)
var macBookCharger = Charger(maximumWattPerHour: 96)
var fastMacBookCharger = Charger(maximumWattPerHour: 106)

var macBook = MacBook(limitFullChargingWatt: 20, batteryVolume: 10)

macBook.chargeBattery(charger: macBookCharger)

var daisoBag = Bag()

daisoBag.put(item: macBook)
daisoBag.put(item: fastMacBookCharger)
