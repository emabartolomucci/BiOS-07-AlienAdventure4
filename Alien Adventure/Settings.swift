//
//  Settings.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/08/16.
//

import UIKit

// MARK: - Settings

struct Settings {
    
    // MARK: Common
    
    struct Common {
        static let GameDataURL = NSBundle.mainBundle().URLForResource("GameData", withExtension: "plist")!
        static let Font = "Superclarendon-Italic"
        static let FontColor = UIColor.whiteColor()
        static var Level = 2
        static var ShowBadges = false
        static var RequestsToSkip = 0
    }
    
    // MARK: Dialogue (Set by UDDataLoader)
    
    struct Dialogue {
        static var StartingDialogue = ""
        static var RequestingDialogue = ""
        static var TransitioningDialogue = ""
        static var WinningDialogue = ""
        static var LosingDialogue = ""
    }
    
    // MARK: Names
    
    struct Names {
        static let Hero = "Hero"
        static let Background = "Background"
        static let Treasure = "Treasure"
    }
}
