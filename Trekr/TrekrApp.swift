//
//  TrekrApp.swift
//  Trekr
//
//  Created by Or Israeli on 18/02/2023.
//

import SwiftUI

@main
struct TrekrApp: App {
	@StateObject var locations = Locations()
	
    var body: some Scene {
        WindowGroup {
			TabView {
				NavigationStack {
					ContentView(location: locations.primary)
				}
				.tabItem {
					Image(systemName: "airplane.circle.fill")
					Text("Discover")
				}
				
				NavigationStack {
					WorldView()
				}
				.tabItem {
					Image(systemName: "map.fill")
					Text("Locations")
				}
				
				NavigationStack {
					TipsView()
				}
				.tabItem {
					Image(systemName: "list.bullet")
					Text("Tips")
				}
			}
			.environmentObject(locations)
        }
    }
}
