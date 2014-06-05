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

        //bottom left
//        let firstFrame = SKTexture(rect:CGRectMake(0.0, 0.0, 0.5,0.5), inTexture: texture)
        
        //bottom right
//        let firstFrame = SKTexture(rect:CGRectMake(0.5, 0.0, 0.5,0.5), inTexture: texture)

        //top left
        let firstFrame = SKTexture(rect:CGRectMake(0.0, 0.5, 0.5,0.5), inTexture: texture)
        //top right
        let secondFrame = SKTexture(rect:CGRectMake(0.5, 0.5, 0.5,0.5), inTexture: texture)
        
        let run = SKAction.animateWithTextures([firstFrame, secondFrame], timePerFrame: 0.1)
        let sprite = SKSpriteNode(texture: firstFrame)

        sprite.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        sprite.runAction(SKAction.repeatActionForever(run))
        self.addChild(sprite)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent) {
        
        for touch: AnyObject in touches {
            let location = touch.locationInNode(self)
            let texture = SKTexture(imageNamed:"osvaldo")

            let firstFrame = SKTexture(rect:CGRectMake(0.0, 0.5, 0.5,0.5), inTexture: texture)

            let secondFrame = SKTexture(rect:CGRectMake(0.5, 0.5, 0.5,0.5), inTexture: texture)
            
            let run = SKAction.animateWithTextures([firstFrame, secondFrame], timePerFrame: 0.1)
            let sprite = SKSpriteNode(texture: firstFrame)
            sprite.position = location

            
            let action = SKAction.rotateByAngle(CGFloat(M_PI), duration:1)
            
            sprite.runAction(SKAction.repeatActionForever(run))
            sprite.runAction(SKAction.repeatActionForever(action))
            
            self.addChild(sprite)
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}
