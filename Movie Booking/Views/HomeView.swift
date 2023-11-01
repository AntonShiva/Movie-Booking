//
//  HomeView.swift
//  Movie Booking
//
//  Created by Anton Rasen on 31.10.2023.
//

import SwiftUI

struct HomeView: View {
    @State var animate = false
    
    var body: some View {
        ZStack {
            CircleBackground(color: Color("greenCircle"))
                  .blur(radius: animate ? 30 : 100)
                  .offset(x: animate ? -50 : -130, y: animate ? -30 : -100)
                  .task {
                      withAnimation(.easeInOut(duration: 7).repeatForever()) {
                          animate.toggle()
                      }
                  }
              
              CircleBackground(color: Color("pinkCircle"))
                  .blur(radius: animate ? 30 : 100)
                  .offset(x: animate ? 100 : 130, y: animate ? 150 : 100)
            
            VStack(spacing: 0.0) {
                Text("Choose Movie")
                    .fontWeight(.bold)
                    .font(.title3)
                    .foregroundColor(.white)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(colors: [Color("backgroundColor"), Color("backgroundColor2")], startPoint: .top, endPoint: .bottom)
        )
    }
}

#Preview {
    HomeView()
}
