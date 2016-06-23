//
//  Zombie.swift
//  Pirate Inn
//
//  Created by Kamil Wójcik on 30.05.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import Foundation

class Zombie: Przeciwnik {
    
    //zombie będzie miało odporność na obrażenia poniżej 15hp
    let odpornośćNaObrażenia = 15
    
    //nadpisanie funkcji łup, żeby wypadało co innego bo w końcu jest zgniły i rozpada się
    override var łup: [String]{
        return ["Widły", "Zgniłe ramię"]
    }
    
    //nadpisanie typu na zombie
    override var typ: String{
        return "Zombie"
    }
    
    //funkcja odporności na atak poniżej 15
    override func próbaAtaku(siłaAtaku: Int) -> Bool {
        if siłaAtaku >= odpornośćNaObrażenia{
            return super.próbaAtaku(siłaAtaku)
        }else{
            return false
        }
    }
    
    
}
