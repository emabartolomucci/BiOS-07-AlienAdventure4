//
//  ShuffleStrings.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/15.
//

extension Hero {
    
    func shuffleStrings(s1 s1: String, s2: String, shuffle: String) -> Bool {
        
        if s1.isEmpty && s2.isEmpty && shuffle.isEmpty {
            return true
        }
        
        if shuffle.characters.count != (s1.characters.count + s2.characters.count) {
            return false
        }
        
        var s1index = s1.startIndex
        var s2index = s2.startIndex
        
        for item in shuffle.characters {
            
            // compares the current char in shuffle with the one in either s1 or s2 at the current index, starting from 0
            
            if s1index < s1.endIndex && item == s1[s1index] {
                    s1index = s1index.successor()
                }
                
             else if s2index < s2.endIndex && item == s2[s2index]  {
                    s2index = s2index.successor()
                }
                
             else {
                return false
            }
        }
        
        return true
    }
}
