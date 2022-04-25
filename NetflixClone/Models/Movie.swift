//
//  Movie.swift
//  NetflixClone
//
//  Created by Tuncer Şahinci on 25.04.2022.
//

import Foundation

struct TrendingMovies: Decodable {
  let results: [Movie]
}

struct Movie: Decodable {
  let id: Int
  let media_type: String?
  let original_name: String?
  let original_title: String?
  let poster_path: String?
  let overview: String?
  let release_date: String?
  let vote_count: Int
  let vote_average: Double
}
