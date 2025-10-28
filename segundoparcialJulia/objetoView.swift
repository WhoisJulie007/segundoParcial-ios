//
//  objetoView.swift
//  segundoparcialJulia
//
//  Created by WIN603 on 27/10/25.
//

import SwiftUI

struct objetoView: View {
    var icono: String
    var nombre: String
    
    var body: some View {
        HStack {
            Image(icono)
                .resizable()
                .frame(width: 50, height: 50)
            Text(nombre)
                .foregroundStyle(.yellow)
        }
        .frame(width: 350, height: 70)
        .background(Color.black)
        .border(Color.white, width: 2)
    }
}

#Preview {
    objetoView(icono: "bomba", nombre: "Bombastic")
}
