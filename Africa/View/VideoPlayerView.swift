//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Ashkan Amin on 7/20/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    //MARK: - PROPERTIES
    
    var videoSelected:String
    var videoTitle:String
    
    //MARK: - BODY
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4")){
                //                Text("Video Title")
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width:32,height:32)
                    .padding(.top,6)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
            
        }//: Vstack
        .accentColor(.accentColor)
        .navigationBarTitle(videoTitle,displayMode: .inline)
    }
}


//MARK: - PREVIEW
struct VideoPlayerView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            VideoPlayerView(videoSelected: "lion", videoTitle: "lion")
        }
    }
}
