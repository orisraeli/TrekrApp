//
//  Tip.swift
//  Trekr
//
//  Created by Or Israeli on 18/02/2023.
//

import Foundation

struct Tip: Decodable {
	let text: String
	let children: [Tip]?
}
