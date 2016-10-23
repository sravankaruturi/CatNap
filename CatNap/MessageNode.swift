//
//  LabelNode.swift
//  CatNap
//
//  Created by Sravan Karuturi on 23/10/16.
//  Copyright © 2016 Sravan Karuturi. All rights reserved.
//

import Foundation
import SpriteKit;

class MessageNode: SKLabelNode{
    convenience init(message: String) {
        self.init(fontNamed:"AvenirNext-Regular");
        
        text = message;
        fontSize = 256.0;
        fontColor = SKColor.gray;
        zPosition = 100;
        
        let front = SKLabelNode(fontNamed: "AvenirNext-Regular");
        front.text = message;
        front.fontSize = fontSize;
        front.fontColor = SKColor.white;
        front.position = CGPoint(x: -2, y: -2);
        addChild(front);
        
        physicsBody = SKPhysicsBody(circleOfRadius: 10);
        
        physicsBody!.collisionBitMask = PhysicsCategory.Edge;
        physicsBody!.categoryBitMask = PhysicsCategory.Label;
        
        physicsBody!.restitution = 0.7;
    }
}
