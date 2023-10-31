//
//  StatusUI.swift
//  Movie Booking
//
//  Created by Anton Rasen on 31.10.2023.
//

import SwiftUI

struct StatusUI: View {
    @State var color: Color = Color(.white)
    @State var text: String = "Available"
    
    var body: some View {
        HStack(spacing: 10.0) {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(color)
            
            Text(text)
                .font(.subheadline)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    StatusUI()
}
