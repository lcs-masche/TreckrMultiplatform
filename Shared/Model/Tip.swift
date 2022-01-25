//
//  Tip.swift
//  TreckrMultiplatform
//
//  Created by Moritz Conrad Asche on 2022-01-24.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
