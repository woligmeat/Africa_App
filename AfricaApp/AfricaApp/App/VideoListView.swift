//
//  VideoListView.swift
//  AfricaApp
//
//  Created by Damian Pedrycz on 03/04/2021.
//

import SwiftUI

struct VideoListView: View {
    
    @State var videos: [Video] = Bundle.main.decode(file: "videos.json")
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { item in
                    NavigationLink(destination: VideoPlayerView(videoSelected: item.id, videoTitle: item.name)) {
                        VideoListItemView(video: item)
                            .padding(.vertical, 8)
                    }
                }//: LOOP
            }//: List
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Shufle video
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "arrow.2.squarepath")
                    }
                }
            }
        }//: Navigation
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
