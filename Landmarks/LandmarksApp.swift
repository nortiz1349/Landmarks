//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by Nortiz M1 on 2022/09/13.
//

import SwiftUI

@main
struct LandmarksApp: App {
	@StateObject private var modelData = ModelData()
	
    var body: some Scene {
        WindowGroup {
            ContentView()
				.environmentObject(modelData)
        }
    }
}
