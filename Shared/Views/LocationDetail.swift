//
//  LocationDetail.swift
//  TreckrMultiplatform
//
//  Created by Moritz Conrad Asche on 2022-01-18.
//

import SwiftUI

struct LocationDetail: View {
    
    //The location to show details about
    //A copy of an instance of a structure will be provided to this view
    let location: Location
    
    var body: some View {
        ScrollView {
            
            Image(location.HeroPicture)
                .resizable()
                .scaledToFit()
            
            HStack {
                
                Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
                    .padding(.bottom)
                
                Spacer()
            }
            
        }
        .navigationTitle(location.name)
    }
}

struct LocationDetail_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            LocationDetail(location: Location.example)
        }
        
    }
}
