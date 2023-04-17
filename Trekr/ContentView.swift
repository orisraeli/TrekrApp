//
//  ContentView.swift
//  Trekr
//
//  Created by Or Israeli on 18/02/2023.
//

import SwiftUI

struct ContentView: View {
	let location: Location
	
	var body: some View {
		ScrollView {
			Image(location.heroPicture)
				.resizable()
				.scaledToFit()
			
			Text(location.name)
				.font(.largeTitle)
				.bold()
				.multilineTextAlignment(.center)
			
			Text(location.country)
				.font(.title)
				.foregroundColor(.secondary)
			
			Text(location.description)
				.padding([.top, .horizontal])
			
			Text("Did you know?")
				.font(.title3)
				.bold()
				.padding(.top)
			
			Text(location.more)
				.padding(.horizontal)

		}
		.navigationTitle("Discover")
	}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
		ContentView(location: .example)
    }
}
 
