//
//  wallpaperView.swift
//  segundoparcialJulia
//
//  Created by WIN603 on 27/10/25.
//

import SwiftUI

struct wallpaperView: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Image("wallpaper")
                    .resizable()
                    .frame(height: 900)
                    .ignoresSafeArea(edges: .all)
                NavigationLink(destination: Objetos()) {
                    Text("Empezar")
                        .foregroundStyle(.yellow)
                }
                .offset(x: 0, y:200)
                .frame(width: 100)
            }
            
            
        }
       
    }
}

#Preview {
    wallpaperView()
}
