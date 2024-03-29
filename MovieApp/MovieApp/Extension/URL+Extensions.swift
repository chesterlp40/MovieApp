//
//  URL+Extensions.swift
//  MovieApp
//
//  Created by Ezequiel Rasgido on 06/07/2022.
//

import Foundation

extension URL {
    
    static func forMoviesByImdbId(
        _ imdbId: String
    ) -> URL? {
        return URL(
            string: "https://www.omdbapi.com/?i=\(imdbId)&apikey=\(Constants.apiKey)"
        )
    }
    
    static func forMoviesByName(
        _ name: String
    ) -> URL? {
        return URL(
            string: "https://www.omdbapi.com/?s=\(name)&apikey=\(Constants.apiKey)"
        )
    }
}
