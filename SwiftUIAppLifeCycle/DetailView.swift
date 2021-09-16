//
//  DetailView.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import SwiftUI

struct DetailView: View {
    
    @State private var index = 0
    private var availableColors: [Color] = [.red, .green, .blue]
    
    var body: some View {
        Button(
            action: {
                let randomIndex = Int.random(in: 0..<availableColors.count)
                index = randomIndex
            },
            label: {
                Text("Press me!")
                    .foregroundColor(availableColors[index])
            }
        )
        .onAppear(perform: {
            print("DetailView - onAppear")
        })
        .onDisappear(perform: {
            print("DetailView - onDisappear")
        })
        .onReceive(NotificationCenter.default.publisher(for: UIDevice.orientationDidChangeNotification), perform: { _ in
            print(UIDevice.current.orientation)
        })
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            DetailView()
                .preferredColorScheme(.dark)
                .navigationBarTitle("Detail", displayMode: .inline)
        }
    }
}
