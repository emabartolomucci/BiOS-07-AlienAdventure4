//
//  RarityOfItems.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/16.
//

extension Hero {
    
    func rarityOfItems(inventory: [UDItem]) -> [UDItemRarity:Int] {
        
        var rareItemsCount : [UDItemRarity:Int] = [ .Common: 0, .Uncommon: 0, .Rare: 0, .Legendary: 0 ] ;
        
        for item in inventory {
            
            switch item.rarity {
            case .Common:
                rareItemsCount[.Common] = rareItemsCount[.Common]! + 1
            case .Uncommon:
                rareItemsCount[.Uncommon] = rareItemsCount[.Uncommon]! + 1
            case .Rare:
                rareItemsCount[.Rare] = rareItemsCount[.Rare]! + 1
            case .Legendary:
                rareItemsCount[.Legendary] = rareItemsCount[.Legendary]! + 1
            }
            
        }
        
        return rareItemsCount
    }
}
