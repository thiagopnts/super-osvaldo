//
//  GameScene.swift
//  SuperOsvaldo
//
//  Created by Thiago Pontes on 6/4/14.
//  Copyright (c) 2014 Thiago Pontes. All rights reserved.
//

import SpriteKit

class GameScene: SKScene {
    override func didMoveToView(view: SKView) {

        let texture = SKTexture(imageNamed:"osvaldo")
        let sprite = SKSpriteNode(texture: texture)

        let firstFrame = SKTexture(rect:CGRectMake(0.0, 0.0, 0.5, 0.5), inTexture: texture)

        sprite.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));

        self.addChild(sprite)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            
            let sprite = SKSpriteNode(imageNamed:"osvaldo")
            
            sprite.xScale = 0.5
            sprite.yScale = 0.5
            sprite.position = location
            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
