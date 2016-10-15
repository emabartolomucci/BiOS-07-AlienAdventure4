//
//  BannedItems.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/16.
//

import Foundation

extension Hero {
    
    func bannedItems(dataFile: String) -> [Int] {
        
        var bannedItemsID = [Int]()
        var bannedItem: String?
        var carbonAge: Int?
        
        if let dataFileURL = NSBundle.mainBundle().URLForResource(dataFile, withExtension: "plist") {
            
            let inventory = NSArray(contentsOfURL: dataFileURL)
            
            for item in inventory! {
                
                if let item = item as? NSDictionary {
                    
                    if let itemName = item["Name"] as? String {
                        
                        bannedItem = itemName
                        
                        if let historicalData = item["HistoricalData"] as? [String: AnyObject] {
                            
                            if let itemCarbonAge = historicalData["CarbonAge"] as? Int {
                                
                                carbonAge = itemCarbonAge
                                
                            }
                        }
                        
                        if bannedItem!.lowercaseString.containsString("laser") && carbonAge < 30 {
                            
                            bannedItemsID.append(item["ItemID"] as! Int)
                            
                        }
                    }
                }
            }
        }
        
        return bannedItemsID
    }
}
