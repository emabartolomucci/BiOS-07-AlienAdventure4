//
//  Badge.swift
//  Alien Adventure
//
//  Edited by Emanuele Bartolomucci on 2016/10/15.
//

import SpriteKit

class Badge: SKSpriteNode {
    
    var requestType: UDRequestType
    
    init(requestType: UDRequestType) {
        self.requestType = requestType
        
        let defaultTexture = SKTexture(imageNamed: "BadgeMagenta")
        
        super.init(texture: defaultTexture, color: UIColor.clearColor(), size: CGSizeMake(48, 48))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}