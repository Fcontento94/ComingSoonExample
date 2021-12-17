//
//  FeaturedMovieView.swift
//  ComingSoon
//
//  Created by Federica Contento on 17/12/21.
//

import SwiftUI

// Featured View
struct FeaturedMovieView: View {
    let fmovies: Movie
    
    var body: some View {
        VStack {
            Image("\(self.fmovies.featuredImageUrl)")
                .resizable()
                .padding(.bottom, 10.0)
                .clipped()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 250)
        }
    }
}
