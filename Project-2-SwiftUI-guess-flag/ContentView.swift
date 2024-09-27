//
//  ContentView.swift
//  Project-2-SwiftUI-guess-flag
//
//  Created by Kevin Cuadros on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var countries = [
        "Estonia",
        "France",
        "Germany",
        "Ireland",
        "Italy",
        "Nigeria",
        "Poland",
        "Spain",
        "UK",
        "Ukraine",
        "US"
    ].shuffled()
    
    @State private var correctAnswers = Int.random(in: 0...2)
    
    @State private var showingScore = false
    @State private var scoreTitle = 0
    @State private var radius = 700
    
    var body: some View {
        
        NavigationView{
            ZStack {
                RadialGradient(
                    stops: [ .init(color: .gray, location: 0.3), .init(color: .indigo, location: 0.3)],
                    center: .top,
                    startRadius: 100,
                    endRadius: CGFloat(radius)
                )
                .animation(.bouncy, value: 800)
                    .ignoresSafeArea()
                
                VStack(spacing: 30) {
                    VStack{
                        Text("Tap the flag of")
                            .foregroundStyle(.white)
                            .font(.title2)
                        Text(countries[correctAnswers])
                            .foregroundStyle(.white)
                            .font(.title3)
                            .fontWeight(.bold)
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            flatTap(number)
                        } label: {
                            Image(countries[number])
                                .clipShape(.buttonBorder)
                                .shadow(radius: 5)
                        }
                        
                        
                    }
                    Spacer()
                }
                
            }
            
            .toolbar {
                ToolbarItem(placement: .principal) {
                    Text("Score: \(scoreTitle)")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                }
            }
        }
        
    }
    
    
    func flatTap(_ number: Int) {
        if number == correctAnswers {
            scoreTitle += 1
        } else {
            scoreTitle -= 1
        }
        askQuestion()
        
        
        
        
        
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswers = Int.random(in: 0...2)
    }
    
}

#Preview {
    ContentView()
}

//LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
//    .ignoresSafeArea()
//
//ZStack{
//    VStack(spacing: 0){
//        Color.red
//        Color.blue
//    }
//    
//    Text("Hello, World!")
//        .padding(40)
//        .background(.ultraThinMaterial)
//}
//.ignoresSafeArea()
//
//
//Text("Your content")
//    .frame(maxWidth: .infinity, maxHeight: .infinity)
//    .foregroundStyle(.white)
//    .background(.blue.gradient)
//
//
//LinearGradient(stops: [
//    Gradient.Stop(color: .white, location: 0.45),
//    Gradient.Stop(color: .black, location: 0.55),
//], startPoint: .top, endPoint: .bottom)
//
//
//RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)
//
//
//AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
//
//
//Button("Delete Selection", role: .destructive) {
//    print("Delete selection")
//}
//
//Button("New game", action: newGame)
//
//VStack {
//    Button("Button 1"){}
//        .buttonStyle(.bordered)
//    
//    Button("Button 2", role: .destructive){}
//        .buttonStyle(.bordered)
//    
//    Button("Button 3"){}
//        .buttonStyle(.borderedProminent)
//        .tint(.purple)
//    
//    Button("Button 4", role: .destructive){}
//        .buttonStyle(.bordered)
//    
//    Button {
//        print("Button 5")
//    } label: {
//        Text("Button 5")
//            .padding()
//            .background(.blue)
//            .foregroundColor(.white)
//    }
//    
//    .alert("Title Alert", isPresented: $alert) {
//        Button("Ok"){
//        }
//    } message: {
//        Text("This is a message")
//    }
//}
