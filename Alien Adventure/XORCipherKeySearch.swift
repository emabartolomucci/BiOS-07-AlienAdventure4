//
//  XORCipherKeySearch.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/15.
//

import Foundation

extension Hero {
    
    func xorCipherKeySearch(encryptedString: [UInt8]) -> UInt8 {
        
        var key: UInt8 = 0
        
        for x in UInt8.min..<UInt8.max {
            
            var decrypted: [UInt8] = [UInt8]()
            
            for character in encryptedString {
                
                decrypted.append(character ^ x)
                
            }
            
            if let decryptedString = String(bytes: decrypted,
                encoding: NSUTF8StringEncoding) where decryptedString == "udacity" {
                
                key = x
            }
        }
        
        return key
    }
}
