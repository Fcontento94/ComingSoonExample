import Foundation

struct Movie: Identifiable {
    var id: Int
    let featured: Bool
    
    let title: String
    let director: String
    let imageUrl: String
    let featuredImageUrl: String
    let year: String
    let duration: Int

    let genres: String
    let genre: MovieGenre
    let rating: String
    
    let plot: String
}
