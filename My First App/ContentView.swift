//
//  ContentView.swift
//  My First App
//
//  Created by Jairo ivan Berrio munoz on 22/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    @State private var textMike = ""
    @State private var textPig = ""
    var body: some View {
        
        VStack(spacing:18){
            Text("Bulldogs & Pigs Supremacy")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .foregroundColor(Color(hue: 0.922, saturation: 0.751, brightness: 0.984))
                .multilineTextAlignment(.center)
            HStack(alignment: .top){
            Image("mike")
            .resizable()
            .frame(width: 130, height: 130)
        Image("pig")
            .resizable()
            .frame(width: 130, height: 130)
            }
            Text("They are basically siblings!")
                .fontWeight(.semibold)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(hue: 0.934, saturation: 0.607, brightness: 1.0)/*@END_MENU_TOKEN@*/)

        Image("pink")
                .resizable()
            .frame(width: 395, height: 45)
            
            VStack(alignment: .center){
                Text(textTitle)
                    .font(.headline)
                    .foregroundColor(Color(hue: 0.921, saturation: 0.756, brightness: 0.729))
                    .multilineTextAlignment(.center)
                TextField("Type your name here...", text: $name)
                    .multilineTextAlignment(.center)
                    .font(.callout)
                    .frame(width: 300.0, height: 25.0)
                    .border(Color.gray,width:2)
                    .padding(0.0)
                
                Button("Submit") {
                    textTitle = "Welcome, \(name)! Want to know why I love these animals so much? Go ahead and click the buttons below!"
                }
                .font(.subheadline)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.931, saturation: 0.568, brightness: 0.99))
            }
            
            HStack(alignment: .top,spacing: 20){
            Image("mike2")
            .resizable()
            .frame(width: 150, height: 120)
        Image("pig2")
            .resizable()
            .frame(width: 145, height: 120)
            }
                
        HStack(spacing: 74){
            VStack(alignment: .center){
                Text(textMike)
                    .font(.subheadline)
                    .foregroundColor(Color(hue: 0.921, saturation: 0.756, brightness: 0.729))
                    .multilineTextAlignment(.center)
                
                Button("BULLDOGS") {
                    textMike = "I love bulldogs, I've had 2 and they have meant the world to me <3"
                }
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.928, saturation: 0.869, brightness: 0.976))
            }
            
            VStack(alignment: .center){
                Text(textPig)
                    .font(.subheadline)
                    .foregroundColor(Color(hue: 0.921, saturation: 0.756, brightness: 0.729))
                    .multilineTextAlignment(.center)
                
                Button("PIGS") {
                    textPig = "Pigs are the cutest, they are actually very funny and friendly!"
                }
                .font(.headline)
                .buttonStyle(.borderedProminent)
                .tint(Color(hue: 0.928, saturation: 0.869, brightness: 0.976))
            }
            
        }
            
        }
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



}
