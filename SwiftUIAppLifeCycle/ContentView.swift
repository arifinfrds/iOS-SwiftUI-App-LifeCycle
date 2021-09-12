//
//  ContentView.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            NavigationLink(destination: DetailView()) {
                List(0 ..< 5) { item in
                    Text("Hello, world! \(item)")
                        .padding()
                }
            }
            .navigationBarTitle(Text("SwiftUI App Life Cycle"))
        }
        .onAppear(perform: {
            print("ContentView - onAppear")
        })
        .onDisappear(perform: {
            print("ContentView - onDisappear")
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
