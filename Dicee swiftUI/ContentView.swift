//
//  ContentView.swift
//  Dicee swiftUI
//
//  Created by Shankar's Mac on 24/04/2021.
//

import SwiftUI

struct ContentView: View {
    
   @State var leftDicenumber = 1
   @State var rightDicenumber = 1
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
            VStack {
                Image("diceeLogo")
    
                Spacer()
         
                HStack {
                    DiceView(n: leftDicenumber)
                    DiceView(n: rightDicenumber)
                    
                }
                .padding(.horizontal)
                
                Spacer()
                
                Button(action: {
                    self.leftDicenumber = Int.random(in: 1...6)
                    self.rightDicenumber = Int.random(in: 1...6)
                }, label: {
                    Text("ROll")
                        .font(.system(size: 50))
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                        .padding(.horizontal)
                        
                }).background(Color.red)
                
            }
                
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct DiceView: View {
    
    let n: Int
    var body: some View {
        Image("dice\(n)")
            .resizable()
            .aspectRatio(1,contentMode: .fit)
            .padding()
    }
}
