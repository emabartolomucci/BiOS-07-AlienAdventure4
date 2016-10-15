//
//  PlanetData.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/16.
//

import Foundation

extension Hero {
    
    func planetData(dataFile: String) -> String {
        
        enum scoreSystem: Int {
            case Common = 1
            case Uncommon = 2
            case Rare = 3
            case Legendary = 4
        }
        var planetScore = Int()
        var planetName = String()
        let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "json")!
        let extractedJSONData = NSData(contentsOfURL: dataFileURL)
        var convertedJSONData: NSArray!
        
        do {
            convertedJSONData = try! NSJSONSerialization.JSONObjectWithData(extractedJSONData!, options: NSJSONReadingOptions()) as! NSArray
        }
        
        for item in convertedJSONData {
            
            var score = 0
            
            if let item = item as? NSDictionary {
                
                score += item["CommonItemsDetected"] as! Int * scoreSystem.Common.rawValue
                score += item["UncommonItemsDetected"] as! Int * scoreSystem.Uncommon.rawValue
                score += item["RareItemsDetected"] as! Int * scoreSystem.Rare.rawValue
                score += item["LegendaryItemsDetected"] as! Int * scoreSystem.Legendary.rawValue
                
                if score > planetScore {
                    planetScore = score
                    planetName = item["Name"] as! String
                }
                
            }
            
        }
        
        return planetName
    }
}
