//
//  ProfileView.swift
//  TwitterCloneApp
//
//  Created by Anyelo Vinzen on 8/6/23.
//

import SwiftUI

struct ProfileView: View {
    
    @State var selectedFilter: TweetFilterViewModel = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var mode
    
    var body: some View {
        VStack(alignment:.leading){
            headerView
        
            actionButton
            
            userInfoDetails
            
            tweetFilterBar
            
            tweetsView
                       
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


extension ProfileView{
    var headerView : some View{
        ZStack(alignment: .bottomLeading){
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack{
                
                Button( action: { mode.wrappedValue.dismiss() }, label: {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 20, height: 16)
                        .foregroundColor(.white)
                        .offset(x: 16, y: 12)
                })
                
                Circle()
                    .frame(width: 72, height: 72)
                    .offset(x: 16, y: 24)
            }
        }.frame(height: 96)
        
    }
    
    
    var actionButton : some View{
        
        HStack(spacing: 12){
            Spacer()
            
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            
            Button {
                
            } label: {
                Text("Edit profile")
                    .font(.subheadline)
                    .foregroundColor(Color.black)
                    .bold()
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.gray, lineWidth: 0.75))
            }

        }.padding(.trailing)
        
    }
    
    var userInfoDetails : some View{
        VStack(alignment: .leading, spacing: 4){
            HStack {
                Text("Heath Ledger")
                    .font(.title2)
                    .bold()
                
                Image(systemName: "checkmark.seal.fill")
                    .foregroundColor(Color(.systemBlue))
                
            }
            
            
            Text("@Joker")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            Text("Your moms favorite villan")
                .font(.subheadline)
                .padding(.vertical)
            
            
            HStack(spacing:24){
                
                HStack{
                    Image(systemName: "mappin.and.ellipse")
                    Text("Gotham, NY")
                }
                
                HStack{
                    Image(systemName: "link")
                    Text("www.peliculasvinzen.com.do")
                }

            }
            .font(.caption)
            .foregroundColor(.gray)
            
            UserStasView()
                .padding(.vertical)
            
       
        }.padding(.horizontal)
    }
    
    
    var tweetFilterBar: some View{
        HStack{
            ForEach(TweetFilterViewModel.allCases, id: \.rawValue){ item in
                
                VStack{
                    Text(item.title)
                        .font(.headline)
                        .fontWeight(selectedFilter == item ? .semibold : .regular)
                        .foregroundColor(selectedFilter == item ? .black : .gray)
                    
                    if(selectedFilter == item){
                        Capsule()
                            .foregroundColor(Color(.systemBlue))
                            .frame(height:3)
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }else{
                        Capsule()
                            .foregroundColor(Color.clear)
                            .frame(height:3)
                    }
                }.onTapGesture{
                    withAnimation(.easeOut){
                        self.selectedFilter = item
                    }
                }
                
            }
        }.overlay(Divider().offset(x:0, y:16))
    }
    
    
    var tweetsView : some View{
        ScrollView{
            LazyVStack{
                ForEach(0 ... 9, id: \.self){ _ in
                    
                    TweetRowView()
                        .padding()
                }
            }
        }
    }
}
