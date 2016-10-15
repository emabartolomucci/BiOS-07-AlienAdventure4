//
//  InscriptionEternalStar.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/14.
//

extension Hero {
    
    func inscriptionEternalStar(inventory: [UDItem]) -> UDItem? {
        
        for item in inventory {
            
            if let inscription = item.inscription {
                if ( inscription.containsString("THE ETERNAL STAR") ) {
                    return item
                }
            }
        }
        
        return nil
    }
}
