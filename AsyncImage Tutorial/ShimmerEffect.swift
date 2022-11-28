//
//  ShimmerEffect.swift
//  AsyncImage Tutorial
//
//  Created by Swee Kwang Chua on 29/11/22.
//

import SwiftUI

struct ShimmerEffect: View {
    @State private var animateGradient = true
    
    var body: some View {
        GeometryReader { (geometry) in
            Color(uiColor: UIColor.systemGray6)
            
            Color(uiColor: UIColor.systemGray5)
                .mask(
                    LinearGradient(
                        colors: [.clear, Color(uiColor: UIColor.systemGray5), .clear],
                        startPoint: .leading,
                        endPoint: .trailing)
                    .scaleEffect(2)
                    .rotationEffect(.degrees(20))
                    .offset(x: self.animateGradient ? -(geometry.size.width * 2): (geometry.size.width*2))
             
                )
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 1).repeatForever(autoreverses: false)) {
                       animateGradient.toggle()
                   }
        }
    }
}

struct ShimmerEffect_Previews: PreviewProvider {
    static var previews: some View {
        ShimmerEffect()
    }
}
