//
//  CheckBadges.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func checkBadges(badges: [Badge], requestTypes: [UDRequestType]) -> Bool {
        
        for type in requestTypes {
            
            var matched: Bool = false
            
            for badge in badges {
                if badge.requestType == type {
                    matched = true
                    break
                }
            }
            if matched == false {
                return false
            }
        }
        
        return true
    }
}
