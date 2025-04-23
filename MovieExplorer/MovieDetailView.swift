//
//  MovieDetailView.swift
//  MovieExplorer
//
//  Created by eman sohail on 16/01/2025.
//

import SwiftUI

struct MovieDetailView: View {
    var movie: Movie
    @State private var watchLater = false
    @State private var watchLaterMessage = " "
    
    var body: some View {
        VStack(alignment: .center, spacing: 30.0){
            Text(movie.title)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Genre: \(movie.genre)")
                .font(.title2)
            
            Text("(\(String(movie.releaseYear)))")
                .font(.title2)
            
            Text("IMDb Rating: \(String(format: "%.1f", movie.imdbRating))")
                .font(.title2)
                .foregroundColor(.black)

Button(action: {
watchLater.toggle()
    watchLaterMessage = watchLater ? "Added to Watch Later" : "Removed from Watch Later"
}) {
    Text(watchLater ? "Remove from Watch Later" : "Add to Watch Later")
        .fontWeight(.bold)
.padding()
.background(watchLater ? Color.red : Color.blue)
.foregroundColor(.white)
.cornerRadius(20)
}
            Text(watchLaterMessage)
                .font(.title3)
                .foregroundColor(.black)
                
                
    }
        .padding(.all, 60.0)
        .background(Color.yellow)
.edgesIgnoringSafeArea(.all)
.cornerRadius(20)
.navigationBarTitle(movie.title, displayMode: .inline)
    }
    
}

struct MovieDetailView_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetailView(movie: Movie.sampleMovie)
    }
}

