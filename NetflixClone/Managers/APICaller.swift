//
//  ShowCaller.swift
//  NetflixClone
//
//  Created by Tuncer Şahinci on 25.04.2022.
//

import Foundation

struct Constants {
  static let API_KEY = "0aef7edd7263514a5652ef2c8e104103"
  static let baseURL = "https://api.themoviedb.org"
}

enum APIError: Error {
  case failedToFetchData
}

class APICaller {
  static let shared = APICaller()

  func fetchTrendingMovies(completion: @escaping (Result<[Content], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/trending/movie/day?api_key=\(Constants.API_KEY)") else { return }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      do {
        let result = try JSONDecoder().decode(TrendingContent.self, from: data)
        completion(.success(result.results))
      } catch {
        completion(.failure(APIError.failedToFetchData))
      }
    }
    
    task.resume()
  }
  
  func fetchTrendingTvs(completion: @escaping (Result<[Content], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/trending/tv/day?api_key=\(Constants.API_KEY)") else { return }
   
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      do {
        let result = try JSONDecoder().decode(TrendingContent.self, from: data)
        completion(.success(result.results))
      } catch {
        completion(.failure(APIError.failedToFetchData))
      }
    }
    
    task.resume()
  }
  
  
  func fetchUpcomingMovies(completion: @escaping (Result<[Content], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/upcoming?api_key=\(Constants.API_KEY)") else { return }
    
   
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      do {
        let result = try JSONDecoder().decode(TrendingContent.self, from: data)
        completion(.success(result.results))
      } catch {
        completion(.failure(APIError.failedToFetchData))
      }
    }
    
    task.resume()
  }
  
  func fetchPopularMovies(completion: @escaping (Result<[Content], Error>) -> Void) {
    guard let url = URL(string: "\(Constants.baseURL)/3/movie/popular?api_key=\(Constants.API_KEY)") else { return }

    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      do {
        let result = try JSONDecoder().decode(TrendingContent.self, from: data)
        completion(.success(result.results))
      } catch {
        completion(.failure(APIError.failedToFetchData))
      }
    }
    task.resume()
  }
  
  func fetchTopRatedMovies(completion: @escaping (Result<[Content], Error>) -> Void) {
    
  guard let url = URL(string: "\(Constants.baseURL)/3/movie/top_rated?api_key=\(Constants.API_KEY)") else { return }
    
  
    let task = URLSession.shared.dataTask(with: URLRequest(url: url)) { data, _, error in
      guard let data = data, error == nil else {
        return
      }
      do {
        let result = try JSONDecoder().decode(TrendingContent.self, from: data)
        completion(.success(result.results))
      } catch {
        completion(.failure(APIError.failedToFetchData))
      }
    }
    
    task.resume()
  }
}
