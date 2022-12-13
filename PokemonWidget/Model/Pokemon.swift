//
//  Pokemon.swift
//  PokemonWidget
//
//  Created by Muhammed Gül on 31.10.2022.
//

import Foundation

struct Pokemon : Identifiable, Codable {
    let gorselIsmi : String
    let isim : String
    let tur : String
    
    var id : String {
        gorselIsmi
    }
}

let pikachu = Pokemon(gorselIsmi: "pikachu", isim: "Pikachu", tur: "Mouse Pokemon")
let balbazar = Pokemon(gorselIsmi: "balbazar", isim: "Balbazar", tur: "Leaf Pokemon")
let abra = Pokemon(gorselIsmi: "abra", isim: "Abra", tur: "Fairy Pokemon")

let pokemonDizisi = [pikachu, balbazar,  abra]
