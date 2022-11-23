//
//  ContentView.swift
//  WarGame
//
//  Created by Davit Pirmisashvili on 22.11.22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var playerCard = "card5"
    @State private var cpuCard = "card3"
    @State private var playerScore = 0
    @State private var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background")
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Image("logo")
                    .padding()
                Spacer()
                
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                
                Spacer()
                
                Button {
                    
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    print(playerRand)
                    print(cpuRand)
                    
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    if playerRand > cpuRand {
                        playerScore += 1
                    }
                    else if cpuRand > playerRand {
                        cpuScore += 1
                    }
                    
                } label: {
                    Image("dealbutton")
                }

                
                Spacer()
                
                HStack {
                    Spacer()
                    
                    VStack {
                        Text("Player")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.system(size: 28))
                            .fontWeight(.bold).foregroundColor(Color.white)
                    }
                    
                    Spacer()
            
                    VStack {
                        Text("CPU")
                            .font(.system(size: 20))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.system(size: 28))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                    }
                    Spacer()
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
