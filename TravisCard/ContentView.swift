//
//  ContentView.swift
//  TravisCard
//
//  Created by Travis Young on 3/29/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(UIColor(red: 0.09, green: 0.63, blue: 0.52, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("travis")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5))
                Text("Travis Young")
                    .font(Font.custom("Pacifico-Regular", size:40))
                    .fontWeight(.bold)
                    .foregroundColor(Color.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "(813) 625-9763", imageName: "phone.fill")
                InfoView(text: "youngtravis424@gmail.com", imageName: "envelope.fill")
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


