//
//  RedefinePolicingItems.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

// MARK: - UDPolicingError

enum UDPolicingError: ErrorType {
    case NameContainsLaser
    case ItemFromCunia
    case ValueLessThan10
}

extension Hero {
    
    func redefinePolicingItems() -> (UDItem throws -> Void) {
        
        func policingFilter(item: UDItem) throws -> Void {
            
            if item.name.lowercaseString.containsString("laser") {
                throw UDPolicingError.NameContainsLaser
            }
            
            if let planetOfOrigin = item.historicalData["PlanetOfOrigin"] {
                if planetOfOrigin as? String == "Cunia" {
                    throw UDPolicingError.ItemFromCunia
                }
            }
            
            if item.baseValue < 10 {
                throw UDPolicingError.ValueLessThan10
            }
        }
        
        return policingFilter
    }
}
