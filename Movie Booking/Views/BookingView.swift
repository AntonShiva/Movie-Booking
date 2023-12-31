//
//  BookingView.swift
//  Movie Booking
//
//  Created by Anton Rasen on 01.11.2023.
//

import SwiftUI

struct BookingView: View {
    @Environment(\.dismiss) var dismiss
    
    @State var gradient = [Color("backgroundColor2").opacity(0), Color("backgroundColor2"), Color("backgroundColor2"), Color("backgroundColor2")]
    
    @State var selectedDate = false
    @State var bindingSelection = false
    @State var selectedHour = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("booking")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxHeight: .infinity, alignment: .top)
                
                VStack {
                    LinearGradient(colors: gradient, startPoint: .top, endPoint: .bottom)
                        .frame(height: 600)
                }
                .frame(maxHeight: .infinity, alignment: .bottom)
                
                VStack(spacing: 0.0) {
                    HStack {
                        CircleButton(action: {
                            dismiss()
                        }, image: "arrow.left")
                        
                        Spacer()
                        
                        CircleButton(action: {}, image: "ellipsis")
                    }
                    .padding(EdgeInsets(top: 46, leading: 20, bottom: 0, trailing: 20))
                    
                    Text("Doctor Strange")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 200)
                    
                    Text("in the Multiverse of Madness")
                        .font(.title3)
                        .foregroundColor(.white)
                    
                    Text("Dr. Stephen Strange casts a forbidden spell that opens the doorway to the meltiverse, including alternate versions of...")
                        .font(.subheadline)
                        .foregroundColor(.white)
                        .padding(30)
                    
                    Text("Select data and time")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    
                    HStack(alignment: .top, spacing: 20.0) {
                        DateButton(weekDay: "Tue", numDay: "14",  isSelected: $bindingSelection)
                            .padding(.top, 90)
                        
                        DateButton(weekDay: "Wed", numDay: "15",  isSelected: $bindingSelection)
                            .padding(.top, 70)

                        DateButton(weekDay: "Fri", numDay: "16", width: 70, height: 100, isSelected: $selectedDate, action: {
                            withAnimation(.spring()) {
                                selectedDate.toggle()
                            }
                        })
                        .padding(.top, 30)
                        
                        DateButton(weekDay: "Sat", numDay: "17",  isSelected: $bindingSelection)
                            .padding(.top, 70)

                        DateButton(weekDay: "Sun", numDay: "18",  isSelected: $bindingSelection)
                            .padding(.top, 90)

                    }
                    
                    HStack(alignment: .top, spacing: 20.0) {
                        TimeButton(hour: "17:00", isSelected: $bindingSelection)
                            .padding(.top, 20)
                        
                        TimeButton(hour: "18:00", isSelected: $bindingSelection)
                        
                        TimeButton(hour: "19:00", width: 70, height: 40, isSelected: $selectedHour, action: {
                            withAnimation(.spring()) {
                                selectedHour.toggle()
                            }
                        })
                        .padding(.top, -20)
                        
                        TimeButton(hour: "20:00", isSelected: $bindingSelection)
                        
                        TimeButton(hour: "21:30", isSelected: $bindingSelection)
                            .padding(.top, 20)
                    }
                    
                    NavigationLink {
                        SeatsView()
                    } label: {
                          LargeButton()
                            .padding(20)
                        .offset(y: selectedDate && selectedHour ? 0 : 200)
                    }
                    
                }
                .frame(maxHeight: .infinity, alignment: .top)
            }
            .background(Color("backgroundColor2"))
        .ignoresSafeArea()
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    BookingView()
}
