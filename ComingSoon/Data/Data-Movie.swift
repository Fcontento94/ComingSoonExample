//
//  Data-Movie.swift
//  ComingSoon
//
//  Created by Federica Contento on 11/12/21.
//

import Foundation
import SwiftUI

struct Movie: Identifiable {
    var id: Int
    let featured: Bool
    
    let title, director, imageUrl: String, featuredImageUrl: String
    let year: String
    let duration: Int

    let genres: String
    let rating: String
    
    let plot: String
    
}


let movies:[Movie] = [
    
    
    .init(id: 1, featured: true,
        title: "Diabolik", director: "Antonio & Marco Manetti",
        imageUrl: "diabolik-cover",
        featuredImageUrl: "diabolik-featured",
          year: "2021", duration: 160, genres: "Action Crime", rating: "4.2",
        plot: "The film tells the darkly romantic story of Diabolik and Eva’s first meeting, set in the fictitious state of Clerville in the 1960s."),


    .init(id: 2, featured: true,
          title: "Nowhere Special", director: "Uberto Pasolini",
          imageUrl: "nowherespecial-cover",
          featuredImageUrl: "nowherespecial-featured",
          year: "2021", duration: 96, genres: "Drama", rating: "3.5",
          plot: "John, a 35-year-old window cleaner, devotes his life to raising his four-year-old son Michael, as the child's mother left them immediately after his birth. Their life is a simple one, made up of universal daily rituals, a life of complete dedication and innocent love that reveals the strength of their relationship. However, John only has a few months to live. Since he has no family to turn to, he will spend the days left to him looking for a new and perfect one to adopt Michael."),
    
    
    .init(id: 3, featured: true,
        title: "Dear Evan Hansen", director: "Stephen Chbosky",
        imageUrl: "dearevanhansen-cover",
        featuredImageUrl: "dearevanhansen-featured",
          year: "2021", duration: 137, genres: "Musical", rating: "3.0",
        plot: "The film tells the darkly romantic story of Diabolik and Eva’s first meeting, set in the fictitious state of Clerville in the 1960s."),
    
    
    .init(id: 4, featured: false,
        title: "Digimon Adventure", director: "Tomohisa Taguchi",
        imageUrl: "digimon-cover",
        featuredImageUrl: "digimon-featured",
        year: "2021", duration: 94, genres: "Anime", rating: "3.2",
        plot: "The team learn that the more their Digimon fight, the faster their relationship with their Digimon will diminish."),
    
    
    .init(id: 5, featured: false,
        title: "Spider-Man", director: "John Watts",
        imageUrl: "spiderman-cover",
        featuredImageUrl: "spiderman-featured",
        year: "2021", duration: 150, genres: "Superhero", rating: "4.0",
        plot: "With Spider-Man's identity now revealed, our friendly neighborhood web-slinger is unmasked and no longer able to separate his normal life as Peter Parker from the high stakes of being a superhero. When Peter asks for help from Doctor Strange, the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man."),
    
    
        .init(id: 6, featured: false,
            title: "Movie 6", director: "Tizio a Caso",
            imageUrl: "empty-cover",
            featuredImageUrl: "empty-featured",
            year: "2020", duration: 150, genres: "Adventure", rating: "2.2",
            plot: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    
    
        .init(id: 7, featured: false,
            title: "Movie 7", director: "Caio Sempronio",
            imageUrl: "empty-cover",
            featuredImageUrl: "empty-featured",
            year: "2019", duration: 90, genres: "Comedy", rating: "3.8",
            plot: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    
        .init(id: 8, featured: false,
            title: "Movie 8", director: "Quentin Tarantino",
            imageUrl: "empty-cover",
            featuredImageUrl: "empty-featured",
              year: "2018", duration: 180, genres: "Drama", rating: "4.5",
            plot: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    
        .init(id: 9, featured: false,
            title: "Movie 9", director: "Quentin Tarantino",
            imageUrl: "empty-cover",
            featuredImageUrl: "empty-featured",
              year: "2015", duration: 180, genres: "Crime", rating: "4.0",
            plot: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    
        .init(id: 10, featured: false,
            title: "Movie 10", director: "Quentin Tarantino",
            imageUrl: "empty-cover",
            featuredImageUrl: "empty-featured",
              year: "2010", duration: 180, genres: "Drama", rating: "4.0",
            plot: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."),
    
   
]
