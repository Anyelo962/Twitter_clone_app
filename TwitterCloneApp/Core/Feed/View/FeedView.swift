//
//  FeedView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 8/6/23.
//

import SwiftUI

struct FeedView: View {
    
    @State private var showNewTweetView:Bool = false
    
    var body: some View {
    
        ZStack(alignment: .bottomTrailing) {
            ScrollView{
                LazyVStack{
                    ForEach(0...20, id: \.self){ _ in
                        TweetRowView()
                            .padding()
                    }
                }
            }
            
            Button{
                showNewTweetView.toggle()
            }label: {
                Image("tweet_icon")
                    .resizable()
                    .renderingMode(.template)
                    .frame(width: 28, height: 28)
                    .padding()
            }.background(Color(.systemBlue))
                .foregroundColor(.white)
                .clipShape(Circle())
                .padding()
                .fullScreenCover(isPresented: $showNewTweetView){
                    NewTweetView()
                }
                
            
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
