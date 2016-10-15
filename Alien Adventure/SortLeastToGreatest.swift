//
//  SortLeastToGreatest.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func sortLeastToGreatest(inventory: [UDItem]) -> [UDItem] {
        
        let sortItems = inventory.sort({(item1: UDItem, item2: UDItem) -> Bool in
            if item1.rarity.rawValue == item2.rarity.rawValue {
                return item1.baseValue < item2.baseValue
            } else {
                return item1.rarity.rawValue < item2.rarity.rawValue
            }
        })
    
        return sortItems
    }
}
