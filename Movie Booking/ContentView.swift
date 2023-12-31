//
//  ContentView.swift
//  Movie Booking
//
//  Created by Anton Rasen on 27.10.2023.
//

import SwiftUI

struct ContentView: View {
    @State var currentTab: Tab = .home
    
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        NavigationView {
            VStack(spacing: 0.0) {
                TabView(selection: $currentTab) {
                    HomeView()
                        .tag(Tab.home)
                    
                    Text("Location")
                        .tag(Tab.location)
                    
                    TicketView()
                        .tag(Tab.ticket)
                    
                    Text("Catgory")
                        .tag(Tab.category)
                    
                    Text("Profile")
                        .tag(Tab.profile)
                }
                
                CustomTabBar(currentTab: $currentTab)
            }
            .ignoresSafeArea(.keyboard)
        }
    }
}

#Preview {
    ContentView()
}
