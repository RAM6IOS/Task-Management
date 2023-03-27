//
//  Home.swift
//  Task Management
//
//  Created by Bouchedoub Ramzi on 27/3/2023.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView(.vertical ,showsIndicators: true){
            LazyVStack(spacing: 15,pinnedViews: [.sectionHeaders]){
                Section{
                    ScrollView(.horizontal ,showsIndicators: false){
                        HStack(spacing: 10){
                            
                        }
                        
                    }
                } header: {
                    HeaderView()
                }
                
            }
            
        }
    }
    
    func HeaderView()-> some View {
        HStack(spacing: 10){
            VStack(alignment: .leading, spacing: 10){
                Text(Date().formatted(date: .abbreviated, time: .omitted))
                Text("Today")
                    .font(.largeTitle.bold())
                
            }
            .hLeading()
            Button{
                
            }label: {
                
            }
            
        }
        .padding()
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
extension View{
    func hLeading()->some View{
        self
            .frame(maxWidth: .infinity,alignment: .leading)
        
    }
    func hTeading()->some View{
        self
            .frame(maxWidth: .infinity,alignment: .trailing)
        
    }
    func hCenter()->some View{
        self
            .frame(maxWidth: .infinity,alignment: .center)
        
    }
}
