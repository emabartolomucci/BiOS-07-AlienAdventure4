//
//  ItemsFromPlanet.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/15.
//

extension Hero {
    
    func itemsFromPlanet(inventory: [UDItem], planet: String) -> [UDItem] {
        
        var itemsFromGlinda = [UDItem]()
        
        for item in inventory {
            if let planetOfOrigin = item.historicalData["PlanetOfOrigin"] {
                
                //needs to be of String type for comparison
                if planetOfOrigin as? String == planet {
                    itemsFromGlinda.append(item)
                }
                
            }
        }
        
        return itemsFromGlinda
    }
    
}
