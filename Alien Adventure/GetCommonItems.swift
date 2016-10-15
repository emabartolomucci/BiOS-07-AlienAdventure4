//
//  GetCommonItems.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func getCommonItems(inventory: [UDItem]) -> [UDItem] {
        
        let inventoryFiltered = inventory.filter({( item: UDItem) -> Bool in item.rarity.rawValue == 0 })
        
        return inventoryFiltered
        
    }
}
