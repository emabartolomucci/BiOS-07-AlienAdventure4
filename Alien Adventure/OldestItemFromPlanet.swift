//
//  OldestItemFromPlanet.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/15.
//

extension Hero {
    
    func oldestItemFromPlanet(inventory: [UDItem], planet: String) -> UDItem? {
        
        var oldestItemFromCunia: UDItem? = nil
        var oldestAge = 0
        
        for item in inventory {
            if let planetOfOrigin = item.historicalData["PlanetOfOrigin"] as? String {
                
                if planetOfOrigin == planet {
                    
                    if let itemAge = item.historicalData["CarbonAge"] as? Int {
                    
                        if itemAge > oldestAge {
                            
                            oldestAge = itemAge
                            oldestItemFromCunia = item
                            
                        }

                    }
                    
                }
                
            }
        }
        
        return oldestItemFromCunia
    }
    
}
