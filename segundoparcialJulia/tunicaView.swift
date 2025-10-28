//
//  tunicaView.swift
//  segundoparcialJulia
//
//  Created by WIN603 on 27/10/25.
//

import SwiftUI

struct tunicaView: View {
    var imagen: String
    var body: some View {
        VStack {
            Image(imagen)
                .resizable()
                .frame(width: 100, height: 100)
                
        }
        .frame(width: 110,height: 100)
        .background(Color.colorFondo)
        .border(Color.white, width: 1)
    }
}

#Preview {
    tunicaView(imagen: "blue_tunic")
}
