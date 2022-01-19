//
//  TreckrMultiplatformApp.swift
//  Shared
//
//  Created by Moritz Conrad Asche on 2022-01-18.
//

import SwiftUI

@main
struct TreckrMultiplatformApp: App {
    var body: some Scene {
        WindowGroup {
            LocationDetail(location: Location.example)
        }
    }
}

