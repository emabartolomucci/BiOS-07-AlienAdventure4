//
//  ReverseLongestName.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/14.
//

extension Hero {
    
    func reverseLongestName(inventory: [UDItem]) -> String {
        
        var longestName = ""
        
        for char in inventory {
            if char.name.characters.count > longestName.characters.count {
                longestName = char.name
            }
        }
        
        return String(longestName.characters.reverse())
    }
    
}
