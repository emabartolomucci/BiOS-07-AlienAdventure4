//
//  BoostItemValue.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func boostItemValue(inventory: [UDItem]) -> [UDItem] {
        
        let improvedItemList = inventory.map({
            (var item: UDItem) -> UDItem in item.baseValue += 100
            return item})
        
        return improvedItemList
    }
}
