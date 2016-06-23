//
//  Gracz.swift
//  Pirate Inn
//
//  Created by Kamil Wójcik on 30.05.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import Foundation

class Gracz: Charakter {
    private var _imię: String = "Gracz 1"
    
    var imię: String {
        get {
            return _imię
        }
    }

    private var _plecak = [String]()
    
    var plecak: [String] {
        get {
            return _plecak
        }
    }
    
    func dodajPrzedmiotDoPlecaka(przedmiot: String){
        _plecak.append(przedmiot)
    }
    
    convenience init(imię: String, hp: Int, siłaAtaku: Int){
        self.init(początkoweHp: hp, siłaAtaku: siłaAtaku)
        _imię = imię
    }
}
