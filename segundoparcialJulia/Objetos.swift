//
//  Objetos.swift
//  segundoparcialJulia
//
//  Created by WIN603 on 27/10/25.
//

import SwiftUI

struct Objetos: View {
    var body: some View {
        NavigationStack {
            VStack {
                GroupBox() {
                    HStack {
                        Image("wizard")
                            .resizable()
                            .frame(width: 50, height: 50)
                        Text("It's dangerous to go alone! Take this")
                            .foregroundStyle(.black)
                    }
                }
                NavigationLink(destination: Equipamiento()) {
                    ScrollView{
                        VStack{
                            objetoView(icono: "bomba", nombre: "Bombastic")
                            objetoView(icono: "boomerang", nombre: "Boomerang")
                            objetoView(icono: "espada", nombre: "Espada")
                            objetoView(icono: "mazo", nombre: "Mazo")
                            objetoView(icono: "resortera", nombre: "Resortera")
                            objetoView(icono: "resortera", nombre: "Resortera")
                        }
                        
                    }
                }
                

            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.colorFondo)
            
        }
        
    }
}

#Preview {
    Objetos()
}
