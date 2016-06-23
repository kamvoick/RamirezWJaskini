//
//  ViewController.swift
//  Pirate Inn
//
//  Created by Kamil Wójcik on 29.05.2016.
//  Copyright © 2016 Kamil Wójcik. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var tekstGóra: UILabel!
    @IBOutlet weak var życieGracza: UILabel!
    @IBOutlet weak var życiePrzeciwnika: UILabel!
    @IBOutlet weak var skrzyniaPrzycisk: UIButton!
    @IBOutlet weak var obrazGoblin: UIImageView!
    @IBOutlet weak var przyciskAtaku: UIButton!
    @IBOutlet weak var obrazNiebieskowłosyMarian: UIImageView!
    @IBOutlet weak var obrazZombie: UIImageView!
    @IBOutlet weak var obrazNóż: UIImageView!
    @IBOutlet weak var obrazSiekiera: UIImageView!
    @IBOutlet weak var obrazWidły: UIImageView!
    @IBOutlet weak var obrazGranat: UIImageView!
    @IBOutlet weak var obrazKarabin: UIImageView!
    @IBOutlet weak var obrazZgniłeRamię: UIImageView!
    
    
    var gracz: Gracz!
    var przeciwnik: Przeciwnik!
    var zawartośćSkrzyni: String?
//    var obrazŁupu: [UIImageView]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        gracz = Gracz(imię: "Ramirez", hp: 110, siłaAtaku: 20)
        życieGracza.text = "\(gracz.hp) HP"
        
        wygenerujPrzeciwnika()
        życiePrzeciwnika.text = "\(przeciwnik.hp)"
    }
    
    
    func wygenerujPrzeciwnika(){
        let randomowyPrzeciwnik = Int(arc4random_uniform(3))
        var obrazPrzeciwnika = [obrazZombie, obrazGoblin, obrazNiebieskowłosyMarian]
        if randomowyPrzeciwnik == 0{
            przeciwnik = Zombie(początkoweHp: 50, siłaAtaku: 12)
            obrazPrzeciwnika[randomowyPrzeciwnik].hidden = false
        }else if randomowyPrzeciwnik == 1{
            przeciwnik = Goblin(początkoweHp: 60, siłaAtaku: 15)
            obrazPrzeciwnika[randomowyPrzeciwnik].hidden = false
        }else if randomowyPrzeciwnik == 2{
            przeciwnik = NiebieskowłosyMarian(początkoweHp: 80, siłaAtaku: 20)
            obrazPrzeciwnika[randomowyPrzeciwnik].hidden = false
        }
    }
    
    @IBAction func naciśnięcieNaSkrzynie(sender: AnyObject) {
        skrzyniaPrzycisk.hidden = true
        tekstGóra.text = zawartośćSkrzyni
        NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: "wygenerujPrzeciwnika", userInfo: nil, repeats: false)
        
    }
    
    @IBAction func naciśnięcieAtaku(sender: AnyObject) {
        if przeciwnik.próbaAtaku(gracz.siłaAtaku){
            tekstGóra.text = "Zaatakowałeś przeciwnika, \(przeciwnik.typ) traci \(gracz.siłaAtaku) HP"
            życiePrzeciwnika.text = "\(przeciwnik.hp)"
        }else{
            tekstGóra.text = "Atak nie powiódł się!"
        }
        
        if let łup = przeciwnik.wypadłoZPrzeciwnika(){
            gracz.dodajPrzedmiotDoPlecaka(łup)
            zawartośćSkrzyni = "\(gracz.imię), znalazłeś \(łup)."
            skrzyniaPrzycisk.hidden = false
            
        }
        
        if !przeciwnik.czyPostaćŻyje {
            życiePrzeciwnika.text = ""
            tekstGóra.text = "\(przeciwnik.typ) został zabity"
            obrazZombie.hidden = true
            obrazGoblin.hidden = true
            obrazNiebieskowłosyMarian.hidden = true
        }
        
        
    }
    
}

