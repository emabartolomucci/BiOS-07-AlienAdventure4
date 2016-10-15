//
//  MatchMoonRocks.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/14.
//

extension Hero {
    
    func matchMoonRocks(inventory: [UDItem]) -> [UDItem] {
        
        var moonRocks = [UDItem]()
        
        for item in inventory {
            if item.name == "MoonRock" {
                moonRocks.append(item)
            }
        }

        return [UDItem](moonRocks)
    }
}
