//
//  Przeciwnik.swift
//  Pirate Inn
//
//  Created by Kamil Wójcik on 30.05.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import Foundation

class Przeciwnik: Charakter {
    var łup: [String]{
        get{
            return ["Miecz smoka", "Buty popłochu", "Lśniąca peleryna"]
        }
    }
    //typ przeciwnika
    var typ: String{
        return ""
    }

    
    //skarby jakie wypadły z zabitego przeciwnika - randomowe
    func wypadłoZPrzeciwnika() -> String? {
        
        if !czyPostaćŻyje {
            let randomowyŁup = Int(arc4random_uniform(UInt32(łup.count)))
            return łup[randomowyŁup]
        }else{
          return nil
        }
    }
} 