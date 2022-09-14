//
//  CategoryRow.swift
//  Landmarks
//
//  Created by Nortiz M1 on 2022/09/14.
//

import SwiftUI

struct CategoryRow: View {
	var categoryName: String
	var items: [Landmark]
	
    var body: some View {
		VStack(alignment: .leading) {
			Text(categoryName)
				.font(.headline)
				.padding(.leading, 15)
				.padding(.top, 5)
			
			ScrollView(.horizontal, showsIndicators: false) {
				HStack(alignment: .top, spacing: 0) {
					ForEach(items) { landmark in
						NavigationLink {
							LandmarkDetail(landmark: landmark)
						} label: {
							CategoryItem(landmark: landmark)
						}
					}
				}
			}
			.frame(height: 185)
		}
    }
}

struct CategoryRow_Previews: PreviewProvider {
	static var lanmarks = ModelData().landmarks
	
    static var previews: some View {
        CategoryRow(
			categoryName: lanmarks[0].category.rawValue,
			items: Array(lanmarks.prefix(4))
		)
    }
}
