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
            
            Image(location.heroPicture)
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
            .padding(.horizontal)
            
            Text(location.description)
                .padding(.horizontal)
            
            
            HStack {
                Text("Did you know?")
                    .font(.title3)
                    .bold()
                    .padding(.vertical)
                
                Spacer()
            }
            .padding(.horizontal)
            
            
            Text(location.more)
                .padding(.horizontal)
            
            if !location.advisory.isEmpty {
                //show something when the advisory is not emty (! adds the not to that)
                
                Text(location.more)
                    .padding(.horizontal)
                
                HStack {
                    
                    
                    Text("Advisory")
                        .font(.title3)
                        .bold()
                        .padding(.vertical)
                    
                    Spacer()
                }
                .padding(.horizontal)
                
                Text(location.advisory)
                    .padding([.horizontal,.bottom])
            } else {
                
                Text(location.more)
                    .padding(.horizontal)
                
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
