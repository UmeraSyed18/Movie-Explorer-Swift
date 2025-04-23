//
//  Movie.swift
//  MovieExplorer
//
//  Created by eman sohail on 16/01/2025.
//

import Foundation

struct Movie: Identifiable {
    var id = UUID()
    var title: String
    var genre: String
    var releaseYear: Int
    var imdbRating: Double
    
    static let sampleMovie = Movie(title: "Inception", genre: "Sci-Fi", releaseYear: 2010, imdbRating: 8.8)
}
