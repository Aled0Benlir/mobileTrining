//
//  ApiClient.swift
//  ApiConsulting
//
//  Created by Alan Benavides Lira on 27/06/23.
//

import Foundation

final class ApiClient {
    func getResponse(completion: @escaping(RickMortyResponse) -> ()) {
        let url = URL(string: "https://rickandmortyapi.com/api/character/107")!
        let urlSessionConfiguration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: urlSessionConfiguration)
        
        let task = urlSession.dataTask(with: url) { data, response, error in
            let response = try! JSONDecoder().decode(RickMortyResponse.self, from: data!)
            completion(response)
        }
        task.resume()
    }
}
