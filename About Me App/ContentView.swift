//
//  ContentView.swift
//  About Me App
//
//  Created by Scholar on 7/27/23.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "Press the button below for information about me!"
    var body: some View {
       
        ZStack {
            Color(.systemTeal)
                .ignoresSafeArea()
            VStack {
                Text("Nicole Stekol")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .padding(2.0)
                Text(textTitle)
                    .font(.title2)
                    .fontWeight(.regular)
                    .multilineTextAlignment(.center)
               
                    
                Button("Press here") {
                    textTitle = "I am 16 years old. My birthday is May 23, 2007. I do competitive dance and love to travel. I love sweets and my favorite food is pasta. I also love to code!"
                    
                    
                }
                .buttonStyle(.borderedProminent)
                .padding(6.0)
                
                    HStack {
                        Image("dance")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
            
                        Image("coding")
                            .resizable(resizingMode: .stretch)
                            .aspectRatio(contentMode: .fit)
                        
                    
                }
                
                
                HStack {
                    
                    Image("pasta")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        
                    Image("sweets")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                    
                }
                Image("travel")
                    .resizable(resizingMode: .stretch)
                    .aspectRatio(contentMode: .fit)
                    
            }
            .padding()
            .background(Rectangle() .foregroundColor(.yellow))
            .cornerRadius(40)
            .shadow(radius: 15)
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
