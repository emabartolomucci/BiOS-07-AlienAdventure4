//
//  LeastValuableItem.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/14.
//

extension Hero {
    
    func leastValuableItem(inventory: [UDItem]) -> UDItem? {
        
        if (inventory.count != 0) {
            
            var leastValueItem: UDItem?
            var lowestValue: Int = inventory[0].baseValue
            
            for item in inventory {
                if lowestValue > item.baseValue {
                    lowestValue = item.baseValue
                    leastValueItem = item
                }
            }
            return leastValueItem
        }
        
        else {
            return nil
        }
    }
}
