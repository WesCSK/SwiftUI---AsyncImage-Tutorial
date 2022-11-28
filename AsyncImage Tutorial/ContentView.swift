//
//  ContentView.swift
//  AsyncImage Tutorial
//
//  Created by Swee Kwang Chua on 29/11/22.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        AsyncImage(url: URL(string: "https://cdn.pixabay.com/photo/2018/08/14/13/23/ocean-3605547__340.jpg")) { image in
            image
                .resizable()
                .scaledToFit()
        } placeholder: {
            ShimmerEffect()
        }
        .frame(height:200)

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
