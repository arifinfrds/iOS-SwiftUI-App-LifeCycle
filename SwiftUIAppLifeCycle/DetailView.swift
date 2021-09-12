//
//  DetailView.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import SwiftUI

struct DetailView: View {
    var body: some View {
        Text("Hello, World!")
            .onAppear(perform: {
                print("DetailView - onAppear")
            })
            .onDisappear(perform: {
                print("DetailView - onDisappear")
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
