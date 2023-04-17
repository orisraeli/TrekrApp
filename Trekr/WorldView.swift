//
//  WorldView.swift
//  Trekr
//
//  Created by Or Israeli on 18/02/2023.
//

import MapKit
import SwiftUI

struct WorldView: View {
	@EnvironmentObject var locations: Locations
	@State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 31.0461, longitude: 34.8516), span: MKCoordinateSpan(latitudeDelta: 20, longitudeDelta: 20))
    
	var body: some View {
		Map(coordinateRegion: $region, annotationItems: locations.places) { location in
			MapAnnotation(coordinate: CLLocationCoordinate2DMake(location.latitude, location.longitude)) {
				NavigationLink(destination: ContentView(location: location)) {
					Image(location.country)
						.resizable()
						.cornerRadius(10)
						.frame(width: 80, height: 40)
						.shadow(radius: 3)
				}
			}
		}
			.navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
