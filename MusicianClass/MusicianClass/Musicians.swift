//
//  Musicians.swift
//  MusicianClass
//
//  Created by Selçuk İleri on 5.10.2023.
//

import Foundation

enum MusicianType {
    case LeadGuitar
    case Vocalist
    case Drummer
    case Bissist
    case Violenist
}

class Musicians {
    var name : String
    var age : Int
    var instrument : String
    var type : MusicianType
    
    init(name: String, age: Int, instrument: String, type: MusicianType) {
        self.name = name
        self.age = age
        self.instrument = instrument
        self.type = type
    }
    
    func sing(){
        print("nothing else matters")
    }
    
    
}
