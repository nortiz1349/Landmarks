//
//  LandmarkList.swift
//  Landmarks
//
//  Created by Nortiz M1 on 2022/09/13.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
		NavigationView {
			List(landmarks) { landmark in
				NavigationLink {
					LandmarkDetail(landmark: landmark)
				} label: {
					LandmarkRow(landmark: landmark)
				}
			}
			.navigationTitle("Landmarks")
		}
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
//			.previewDevice(PreviewDevice(rawValue: "iPhone SE (3rd generation)"))
    }
}