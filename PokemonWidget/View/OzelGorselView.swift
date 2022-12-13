//
//  OzelGorselView.swift
//  PokemonWidget
//
//  Created by Muhammed Gül on 31.10.2022.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    
    var body: some View {
        image.resizable()
            .aspectRatio(contentMode: .fit)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.yellow, lineWidth: 8)).shadow(radius: 10)
    }
}

struct OzelGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("pikachu"))
    }
}
