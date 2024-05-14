//
//  ContentView.swift
//  DisplayListAndNavigation
//
//  Created by Idris on 13/05/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        let hikes: [Hike] = [
            .init(name: "John Doe", photo: "photo.fill", mile: 12.0),
            .init(name: "John Legend", photo: "photo.fill", mile: 15.0)
        ]
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    ExtractedView(hike: hike)
                }
                .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationTitle("Beranda")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetail(hike: hike)
            }
        }

    }
}

#Preview {
    ContentView()
}

struct ExtractedView: View {
    let hike: Hike

    init(hike: Hike) {
        self.hike = hike
    }
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: hike.photo)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 100, height: 100)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 8) {
                Text(hike.name)
                    .fontWeight(.bold)
                    .font(.title2)
                Text("\(hike.mile) miles")
                    .font(.subheadline)
            }
        }

    }
}
