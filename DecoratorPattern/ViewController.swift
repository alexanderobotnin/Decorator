//
//  ViewController.swift
//  DecoratorPattern
//
//  Created by Alexander Obotnin 24.12.2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let americano = Americano()
        print("\(americano.getDescription())")
        
        let shot = Shot(coffee: americano)
        print("\(shot.getDescription())")
        
        let cream = Cream(coffee: shot)
        print("\(cream.getDescription())") 

        let whip = Whip(coffee: cream)
        print("\(whip.getDescription())")
    
    }


}

