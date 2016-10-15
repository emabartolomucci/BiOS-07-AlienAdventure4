//
//  ItemComparison.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/16.
//

import Foundation

func <(lhs: UDItem, rhs: UDItem) -> Bool {
    
    if lhs.rarity.rawValue < rhs.rarity.rawValue {
        
        return true
        
    } else if (lhs.rarity.rawValue == rhs.rarity.rawValue) {
        
        if (lhs.baseValue < rhs.baseValue) {
            
            return true
            
        }
    }
    
    return false
}
