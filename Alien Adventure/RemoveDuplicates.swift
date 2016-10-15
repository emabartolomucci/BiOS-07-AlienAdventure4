//
//  RemoveDuplicates.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func removeDuplicates(inventory: [UDItem]) -> [UDItem] {
        
        let inventoryTemp = Set<UDItem>(inventory)
        
        let purgedInventory = Array<UDItem>(inventoryTemp)
        
        return purgedInventory
    }
}
