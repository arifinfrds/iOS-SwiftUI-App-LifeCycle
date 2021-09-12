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
                    VStack(alignment: .leading, spacing: 5.0) {
                        Text("Hello, world! \(item)")
                            .font(.headline)
                        
                        Text("Some detail")
                            .font(.footnote)
                    }
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
