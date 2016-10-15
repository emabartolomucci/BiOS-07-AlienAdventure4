//
//  MostCommonCharacter.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/16.
//

extension Hero {
    
    func mostCommonCharacter(inventory: [UDItem]) -> Character? {
        
        var mostCommonChar = Character?()
        var charCount = Int()
        var charDict = [Character:Int]()
        
        for item in inventory {
            
            for char in item.name.lowercaseString.characters {
                
                if let _ = charDict[char] {
                    
                    charDict[char] = charDict[char]! + 1
                    
                } else {
                    
                    charDict[char] = 0
                    
                }
            }
        }
        
        for (charName, count) in charDict {
            
            if count > charCount {
                charCount = count
                mostCommonChar = charName
            }
            
        }
        
        return mostCommonChar
    }
}
