//
//  PolicingItems.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

extension Hero {
    
    func policingItems(inventory: [UDItem], policingFilter: UDItem throws -> Void) -> [UDPolicingError: Int] {
        
        var errorCount: [UDPolicingError: Int]
        errorCount = [UDPolicingError.NameContainsLaser: 0, UDPolicingError.ItemFromCunia: 0, UDPolicingError.ValueLessThan10: 0]
        
        for item in inventory {
            do {
                try policingFilter(item)
            } catch UDPolicingError.NameContainsLaser {
                errorCount[UDPolicingError.NameContainsLaser]! += 1
            } catch UDPolicingError.ItemFromCunia {
                errorCount[UDPolicingError.ItemFromCunia]! += 1
            } catch UDPolicingError.ValueLessThan10 {
                errorCount[UDPolicingError.ValueLessThan10]! += 1
            } catch {
                print("An unkwnown error occured")
            }
        }
        
        return errorCount
    }
}
