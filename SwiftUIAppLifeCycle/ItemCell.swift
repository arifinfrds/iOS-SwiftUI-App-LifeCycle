//
//  ItemCell.swift
//  SwiftUIAppLifeCycle
//
//  Created by Arifin Firdaus on 12/09/21.
//

import SwiftUI

struct ItemCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            Text("Hello, world!")
                .font(.headline)
            
            Text("Some detail")
                .font(.footnote)
                .padding(.bottom, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            
            Image(systemName: "photo.fill")
                .resizable()
                .frame(width: 350, height: 250, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ItemCell_Previews: PreviewProvider {
    static var previews: some View {
        ItemCell()
    }
}
