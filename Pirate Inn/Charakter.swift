//
//  Charakter.swift
//  Pirate Inn
//
//  Created by Kamil Wójcik on 29.05.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import Foundation

class Charakter {
    private var _hp: Int = 100
    private var _siłaAtaku: Int = 10
    
    var siłaAtaku: Int {
        get
        {
            return _siłaAtaku
        }
    }
    
    var hp: Int {
        get{
            return _hp
        }
    }
    
    
    var czyPostaćŻyje: Bool {
        get {
            if _hp <= 0 {
                return false
            }else{
            return true
        }
        }
    }
    
    init(początkoweHp: Int, siłaAtaku: Int){
        self._hp = początkoweHp
        self._siłaAtaku = siłaAtaku
    }
    
    func próbaAtaku(siłaAtaku: Int) -> Bool{
    self._hp -= siłaAtaku
        
        return true
    }
    
}
