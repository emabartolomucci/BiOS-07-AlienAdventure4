//
//  TotalBaseValue.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func totalBaseValue(inventory: [UDItem]) -> Int {
        
        let totalValue = inventory.reduce(0, combine: {(subtotal, item) -> Int in
            subtotal + item.baseValue
        })
        
        return totalValue
    }
    
}
