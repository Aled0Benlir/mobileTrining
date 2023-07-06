//
//  ApiClient.swift
//  TestNubelity
//
//  Created by Alan Benavides Lira on 27/06/23.
//

import Foundation

class ApiClient {
    func getResponse(completion: @escaping(UserResponse?) -> ()) {
        guard let url = URL(string: "https://randomuser.me/api") else { return }
        let urlSessionConfiguration = URLSessionConfiguration.default
        let urlSession = URLSession(configuration: urlSessionConfiguration)
        
        let task = urlSession.dataTask(with: url) { data, response, error in
            if let data = data {
                let userResponse = try! JSONDecoder().decode(
                    UserResponse.self,
                    from: data)
                completion(userResponse)
            }
            completion(nil)
        }
        task.resume()
    }
}
