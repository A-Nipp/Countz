//
//  ContentView.swift
//  Shared
//
//  Created by AlecNipp on 1/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var count = 0
    let max = 10
    var progress: Double {
        Double(count) / Double(max)
    }
    var body: some View {
        NavigationView {
            ZStack {
                LinearGradient(colors: [.blue, .white], startPoint: .top, endPoint: .bottom)
                    .ignoresSafeArea()
                LinearGradient(colors: [.red,.white], startPoint: .top, endPoint: .bottom)
                    .opacity(progress)
                    .ignoresSafeArea()
                VStack {
                    Text("\(count)")
                        .font(.largeTitle)
                    Spacer()
                    HStack{
                        Button(action: { count -= 1}, label: { Image(systemName: "minus")})
                        Spacer()
                        Button(action: { count += 1}, label: { Image(systemName: "plus")})
                    }
                    .padding()
                }
                .padding()
                .navigationTitle("Countz")
                //.navigationBarHidden(true)
                
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
