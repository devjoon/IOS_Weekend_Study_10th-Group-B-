//
//  Protocol.swift
//  POPProject
//
//  Created by hyunMac on 11/18/23.
//

protocol Chargeable {
    var maximumWattPerHour: WattPerHour { get }
    
    func convert(chargeableWattPerHour: WattPerHour) -> WattPerHour
}
