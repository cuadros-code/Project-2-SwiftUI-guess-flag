//
//  ContentView.swift
//  Project-2-SwiftUI-guess-flag
//
//  Created by Kevin Cuadros on 23/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alert = false
    
    var body: some View {
        Button("Delete Selection", role: .destructive) {
            print("Delete selection")
        }
        
        Button("New game", action: newGame)
        
        VStack {
            Button("Button 1"){}
                .buttonStyle(.bordered)
            
            Button("Button 2", role: .destructive){}
                .buttonStyle(.bordered)
            
            Button("Button 3"){}
                .buttonStyle(.borderedProminent)
                .tint(.purple)
            
            Button("Button 4", role: .destructive){}
                .buttonStyle(.bordered)
            
            Button {
                print("Button 5")
            } label: {
                Text("Button 5")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
            }
            
            .alert("Title Alert", isPresented: $alert) {
                Button("Ok"){
                }
            } message: {
                Text("This is a message")
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
    
    func newGame() {
        print("New Game")
        alert.toggle()
    }
}

#Preview {
    ContentView()
}

//LinearGradient(colors: [.white, .black], startPoint: .top, endPoint: .bottom)
//    .ignoresSafeArea()

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


//Text("Your content")
//    .frame(maxWidth: .infinity, maxHeight: .infinity)
//    .foregroundStyle(.white)
//    .background(.blue.gradient)


//LinearGradient(stops: [
//    Gradient.Stop(color: .white, location: 0.45),
//    Gradient.Stop(color: .black, location: 0.55),
//], startPoint: .top, endPoint: .bottom)


//RadialGradient(colors: [.blue, .black], center: .center, startRadius: 20, endRadius: 200)


//AngularGradient(colors: [.red, .yellow, .green, .blue, .purple, .red], center: .center)
