//
//  ContentView.swift
//  AsyncImageSample
//
//  Created by Y K on 13.12.2023.
//

import SwiftUI

extension Image  {
    func imageModifier() -> some View {
        self
            .resizable()
            .scaledToFit()
    }
    func iconModifier() -> some View {
        self
            .imageModifier()
            .frame(maxWidth: 128)
            .foregroundStyle(.purple)
            .opacity(0.5)
    }
    }

struct ContentView: View {
    private let imageUrl: String = "https://credo.academy/credo-academy@3x.png"
    var body: some View {
        // MARK: 1. Basic
//        AsyncImage(url: URL(string: imageUrl))

        // MARK: 2. Scale

//        AsyncImage(url: URL(string: imageUrl), scale: 3.0)
        
        // MARK: 3. Placeholer
        AsyncImage(url: URL(string: imageUrl)) { image in
            image.imageModifier()
                
        } placeholder: {
            Image(systemName: "photo.circle.fill")
                .iconModifier()
        }
        .padding(40)
            
    }
}

#Preview {
    ContentView()
}
