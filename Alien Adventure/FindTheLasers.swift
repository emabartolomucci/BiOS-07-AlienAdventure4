//
//  FindTheLasers.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func findTheLasers() -> (UDItem -> Bool) {
        
        func containsLaser(item: UDItem) -> Bool {
            if item.name.lowercaseString.containsString("laser") {
                return true
            } else {
                return false
            }
        }
        
        return containsLaser
    }
}
