//
//  Equipamiento.swift
//  segundoparcialJulia
//
//  Created by WIN603 on 27/10/25.
//

import SwiftUI



struct Equipamiento: View {
    @State var name: String = "Link"
    @State var textoTunica: String = "Normal"
    @State var tunica: Int = 0
    @State var coloBorde: Color = Color.gray
    var body: some View {
        NavigationStack {
            VStack{
                HStack{
                    Image("bomba")
                        .resizable()
                        .frame(width: 50, height: 50)
                    TextField("Enter your name", text: $name)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                }
                if name=="Link"{
                    Text("Por favor ingresa tu nombre")
                }
                HStack{
                    if tunica == 0{
                        Image("normal_link")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    else if tunica == 1{
                        Image("blue_link")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    else if tunica == 2{
                        Image("green_link")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                    else if tunica == 3{
                        Image("red_link")
                            .resizable()
                            .frame(width: 200, height: 200)
                    }
                   
                    VStack(){
                        Button(action: {
                            tunica = 1
                            coloBorde = Color.blue
                            textoTunica = "Azul"
                            
                        }) {
                            tunicaView(imagen: "blue_tunic")
                        }
                        Button(action: {
                            tunica = 2
                            coloBorde = Color.green
                            textoTunica = "Verde"


                        }) {
                            tunicaView(imagen: "green_tunic")
                        }
                        Button(action: {
                            tunica = 3
                            coloBorde = Color.red
                            textoTunica = "Roja"


                        }
                        ) {
                            tunicaView(imagen: "red_tunic")
                        }
                        
                    }
                    
                    
                }
                .frame(width: 500, height: 400)
                .background(Color.colorFondo)
                .border(coloBorde, width: 2)
                
                if tunica==0{
                    Text("Por favor elige una tunica")
                        
                }
                
                if name != "Link" && tunica != 0{
                    Text("Hola \(name) con tunica \(textoTunica)")
                }
                
                
                //Julia
            }
            
            
        }
    }
}

#Preview {
    Equipamiento()
}
