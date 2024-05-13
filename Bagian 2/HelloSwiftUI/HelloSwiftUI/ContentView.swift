//
//  ContentView.swift
//  HelloSwiftUI
//
//  Created by Idris on 13/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 16) {
                Text("Hello, world!")
                    .multilineTextAlignment(.leading)
                HStack {
                    Text("Hello, world!")
                    Spacer()
                    Text("Hello, world!")
                }
                .padding(.init(top: 0, leading: 16, bottom: 0, trailing: 16))
                .foregroundColor(.yellow)

                Image(systemName: "person")
                    .imageScale(.large)
                    .foregroundColor(.black)
                    .background(.blue)
                Spacer()
                Divider()
            }
            .padding()
            .navigationTitle(Text("Beranda"))
        }

    }
}

#Preview {
    ContentView()
}
