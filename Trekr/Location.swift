//
//  Location.swift
//  Trekr
//
//  Created by Or Israeli on 18/02/2023.
//

import Foundation

struct Location: Decodable, Identifiable {
	let id: Int
	let name: String
	let country: String
	let description: String
	let more: String
	let latitude: Double
	let longitude: Double
	let heroPicture: String
	let advisory: String
	
	static let example = Location(id: 1,
								  name: "Great Smokey Mountains",
								  country: "United States",
								  description: "A great place to visit",
								  more: "More text here",
								  latitude: 35.6,
								  longitude: -83.5,
								  heroPicture: "smokies",
								  advisory: "Beware of the bears!")
}
