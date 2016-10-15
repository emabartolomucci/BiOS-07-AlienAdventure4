//
//  SpecialBadge.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

import SpriteKit
import Foundation

class SpecialBadge: Badge {
    
    enum BadgeAnimation: Int {
        case Shake = 0
        case Rotate = 1
        case GrowAndShrink = 2
    }
    
    override init(requestType: UDRequestType) {
        
        super.init(requestType: requestType)
        
        let tealBadge = SKTexture(imageNamed: "BadgeTeal")
        self.texture = tealBadge
        
        animator(Int(arc4random_uniform(3)))
    }
    
    func animator(badgeAnimation: Int) {
        let randomAnimation = BadgeAnimation(rawValue: badgeAnimation)
        
        switch randomAnimation! {
            case .GrowAndShrink: growAndShrink()
            case .Rotate: rotate()
            case .Shake: shake()
        }
    }

    
    // MARK: Functions for badge animation
    
    func shake() {
        let x: Float = 10
        let y: Float = 6
        let numberOfTimes = 2.0 / 0.04
        var actionsArray = [SKAction]()
        
        for _ in 1...Int(numberOfTimes) {
            let dX = Float(arc4random_uniform(UInt32(x))) - x / 2
            let dY = Float(arc4random_uniform(UInt32(y))) - y / 2
            let action = SKAction.moveByX(CGFloat(dX), y: CGFloat(dY), duration: 0.02)
            actionsArray.append(action)
            actionsArray.append(action.reversedAction())
        }
        
        let sequencedAction = SKAction.sequence(actionsArray)
        runAction(SKAction.repeatActionForever(sequencedAction))
        
    }
    
    func rotate() {
        let action = SKAction.rotateByAngle(CGFloat(-M_PI), duration: 1.25)
        runAction(SKAction.repeatActionForever(action))
    }
    
    func growAndShrink() {
        let action1 = SKAction.scaleTo(0.7, duration: 0.8)
        let action2 = SKAction.scaleTo(1.2, duration: 0.8)
        let sequencedAction = SKAction.sequence([action1, action2])
        runAction(SKAction.repeatActionForever(sequencedAction))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
