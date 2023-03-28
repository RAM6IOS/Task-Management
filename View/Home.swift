//
//  Home.swift
//  Task Management
//
//  Created by Bouchedoub Ramzi on 27/3/2023.
//

import SwiftUI

struct Home: View {
    @StateObject var taskViewModel:TaskViewModel = TaskViewModel()
    @Namespace var animation
    var body: some View {
        ScrollView(.vertical ,showsIndicators: true){
            LazyVStack(spacing: 15,pinnedViews: [.sectionHeaders]){
                Section{
                    ScrollView(.horizontal ,showsIndicators: false){
                        HStack(spacing: 10){
                            ForEach(taskViewModel.curentWeek ,id:\.self){day in
                               // Text(day.formatted(date: .abbreviated, time: .omitted))
                                VStack(spacing: 10){
                                    Text(taskViewModel.exsanshenDate(date: day, format: "dd"))
                                        .font(.system(size: 15))
                                        .fontWeight(.semibold)
                                    Text(taskViewModel.exsanshenDate(date: day, format: "EEE"))
                                        .font(.system(size: 15))
                                    Circle()
                                        .fill()
                                        .frame(width: 8, height: 8)
                                        .opacity(taskViewModel.isToday(date: day) ? 1 :0)
                                }
                                .foregroundColor(taskViewModel.isToday(date: day) ? .primary : .secondary)
                                .foregroundColor(taskViewModel.isToday(date: day) ? .white : .black)
                                .frame(width: 45 ,height: 90)
                                .background(
                                    ZStack{
                                        if taskViewModel.isToday(date: day){
                                            Capsule()
                                                .fill(.black)
                                                .matchedGeometryEffect(id: "jnkrewj", in: animation)
                                        }
                                        
                                    })
                                .contentShape(Capsule())
                                .onTapGesture {
                                    withAnimation{
                                        taskViewModel.curentDate = day
                                    }
                                }
                                
                                
                            }
                        }
                        .padding(.horizontal)
                        
                        
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
