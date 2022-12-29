//
//  DecoratorPattern.swift
//  DecoratorPattern
//
//  Created by Alexander Obotnin 24.12.2022.
//
//

import Foundation

protocol Coffee{
    
    func getDescription() -> String
}

class Latte : Coffee{
    
    func getDescription() -> String {
        return "latte"
    }
}

class Americano : Coffee{
    
    func getDescription() -> String {
        return "americano"
    }
}

class Mocha : Coffee{
    
    func getDescription() -> String {
        return "mocha"
    }
}

protocol Decorator : Coffee {
    
    var coffee : Coffee { get set }
    
    func getDescription() -> String
}


class Cream: Decorator {
    
    var coffee: Coffee
    
    init( coffee : Coffee){
        self.coffee = coffee
    }
    
    func getDescription() -> String {
        return coffee.getDescription() + "+ Cream"
    }
}

class Shot: Decorator {
    
    var coffee: Coffee
    
    init( coffee : Coffee){
        self.coffee = coffee
    }
    
    func getDescription() -> String {
        return coffee.getDescription() + "+ Shot"
    }
}

class Whip : Decorator {
    
    var coffee: Coffee
    
    init( coffee : Coffee){
        self.coffee = coffee
    }
    
    func getDescription() -> String {
        return coffee.getDescription() + "+ Whip"
    }
}
