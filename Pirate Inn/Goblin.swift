//
//  Goblin.swift
//  Pirate Inn
//
//  Created by Kamil Wójcik on 30.05.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import Foundation

class Goblin: Przeciwnik {
    override var łup: [String]{
        return ["Prymitywna siekiera", "Granat"]
    }
    
    override var typ: String{
        return "Goblin"
    }
}
