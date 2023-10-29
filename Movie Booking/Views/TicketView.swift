//
//  TicketView.swift
//  Movie Booking
//
//  Created by Anton Rasen on 28.10.2023.
//

import SwiftUI

struct TicketView: View {
    var body: some View {
        ZStack {
            
            
            
            
            VStack(spacing: 30.0) {
                Text("Mobile Ticket")
                    .font(.title3)
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                
                Text("Once you buy a movie ticket simply scan the barcode to acces to your movie.")
                    .frame(maxWidth: 248)
                    .font(.body)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.horizontal, 20)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        }
        .background(
            LinearGradient(gradient: Gradient(colors: [Color("backgroundColor"), Color("backgroundColor2")]), startPoint: .top, endPoint: .bottom)
        
        )
    }
}

#Preview {
    TicketView()
}
