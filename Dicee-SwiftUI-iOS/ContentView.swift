//
//  ContentView.swift
//  Dicee-SwiftUI-iOS
//
//  Created by Nijat Naghiyev on 26.01.25.
//

import SwiftUI

struct ContentView: View {
   @State var diceNumber1: Int = 1
   @State var diceNumber2: Int = 1
    
    // MARK: - random number generator

    func randomNumberGenerator() -> Int {
        let randomNumber = Int.random(in: 1...6)
        
        return randomNumber
    }
    
    // MARK: - roll dice

    func rollDice(){
        diceNumber1 = randomNumberGenerator()
        diceNumber2 = randomNumberGenerator()
    }
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Image("diceeLogo")
                

                HStack {
                    DiceView(diceNumber: diceNumber1)
                    DiceView(diceNumber: diceNumber2)

                }//: HStack
                .padding(.horizontal)
                .padding(.top, 40)
                
                Spacer()
                
                .padding()
                Button("Roll") {
                    rollDice()
                }//: Button
                .font(.system(size: 50))
                .foregroundStyle(.white)
                .fontWeight(.heavy)
                .padding()
                .background(.red)
            }//: VStack
            .padding()
        }//: ZStack
        .onAppear() {
            rollDice()
        }
    }//: Body
}

#Preview {
    ContentView()
}


