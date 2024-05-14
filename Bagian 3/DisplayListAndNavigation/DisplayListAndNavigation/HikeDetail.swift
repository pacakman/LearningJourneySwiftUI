//
//  HikeDetail.swift
//  DisplayListAndNavigation
//
//  Created by Idris on 13/05/24.
//

import SwiftUI

struct HikeDetail: View {
    let hike: Hike
    @State private var zoom: Bool = false
    init(hike: Hike) {
        self.hike = hike
    }

    var body: some View {
        VStack(alignment: .leading, spacing: 16) {
            Image(systemName: hike.photo)
                .resizable()
                .aspectRatio(contentMode: zoom ? .fit : .fill)
                .frame(width: 100, height: 100)
                .frame(maxWidth: .infinity, alignment: .center)
                .clipShape(Circle())
                .onTapGesture {
                    withAnimation {
                        zoom.toggle()
                    }
                }
            Text(hike.name)
                .multilineTextAlignment(.leading)
            Spacer()
            Divider()
        }
        .navigationTitle(hike.name)
        .padding()
        .toolbarRole(.navigationStack)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    HikeDetail(hike: .init(name: "John", photo: "photo.fill", mile: 0))
}
