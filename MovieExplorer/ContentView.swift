//
//  ContentView.swift
//  MovieExplorer
//
//  Created by eman sohail on 16/01/2025.
//

import SwiftUI

struct ContentView: View {
    let movies = [
        Movie(title: "The Matrix", genre: "Sci-Fi", releaseYear: 1999, imdbRating: 8.7),
        Movie(title: "Inception", genre: "Sci-Fi", releaseYear: 2010, imdbRating: 8.8),
        Movie(title: "Titanic", genre: "Romance", releaseYear: 1997, imdbRating: 7.9),
        Movie(title: "The Fault in Our Stars", genre: "Romance", releaseYear: 2014, imdbRating: 7.7),
        Movie(title: "The Godfather", genre: "Crime", releaseYear: 1972, imdbRating: 9.2),
        Movie(title: "Toy Story", genre: "Animation", releaseYear: 1995, imdbRating: 8.3),
        Movie(title: "Home Alone", genre: "Comedy", releaseYear: 1990, imdbRating: 7.7),
        Movie(title: "Jumanji", genre: "Adventure", releaseYear: 1995, imdbRating: 7.0),
    ]
    
    var body: some View {
        NavigationView {
            
            ZStack{
                Color.yellow
                .edgesIgnoringSafeArea(.all)
                
                
                List(movies){ movie in
                    NavigationLink(destination: MovieDetailView(movie: movie)){
                        HStack{
                            Text(movie.title)
                                .foregroundColor(.black)
                                .font(.headline)
                                .padding(.top)
                                
                                
                                
                                
                            Spacer()
                            Text("(\(String(movie.releaseYear)))")
                                .fontWeight(.semibold)
                                .foregroundColor(.blue)
                                .font(.subheadline)
                            
                        }
                    }
                    .listRowBackground(Color.white)
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                .scrollContentBackground(.hidden)
                .navigationBarTitle("Movie Explorer")
                
            }
        }
    }
}
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

