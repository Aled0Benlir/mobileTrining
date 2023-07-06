//
//  Rick&MortyApiModel.swift
//  ApiConsulting
//
//  Created by Alan Benavides Lira on 27/06/23.
//

import Foundation

struct RickMortyResponse: Decodable {
    let id: Int
    let name: String
    let image: String
}
