//
//  ContentView.swift
//  PokemonWidget
//
//  Created by Muhammed Gül on 31.10.2022.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.com.muhammedgul.PokemonWidget"))
    
    var pokemonData : Data = Data()
    
    var body: some View {
        VStack {
            ForEach(pokemonDizisi) { pokemon in PokemonView(pokemon: pokemon).onTapGesture {
                userDefaultsKaydet(pokemon: pokemon)
            }
            }
        }
    }
    
    func userDefaultsKaydet(pokemon: Pokemon){
        
        if let pokemonData = try? JSONEncoder().encode(pokemon) {
            self.pokemonData = pokemonData
            print(pokemon.isim)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetPokemon")
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
