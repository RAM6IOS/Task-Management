//
//  TaskViewModel.swift
//  Task Management
//
//  Created by Bouchedoub Ramzi on 27/3/2023.
//
//.init(timeIntervalSince1970: 1641645497)
import Foundation


class TaskViewModel:ObservableObject{
    @Published var task : [Task] = [
        Task(tasktitel: "Matenk", taskDescription: "tmore", taskData:Date(timeIntervalSince1970: 1641645497) )
    ]
    
    @Published var curentWeek :[Date] = []
    @Published var curentDate:Date =  Date()
    init(){
        fechCurentWeek()
    }
    func fechCurentWeek(){
        let today = Date()
        let calnder = Calendar.current
        let week = calnder.dateInterval(of: .weekOfMonth, for: today )
        
        guard let firstWeekDay = week?.start else{
            return
            
        }
        (0...7).forEach{day in
            if let weekday = calnder.date(byAdding: .day, value: day, to: firstWeekDay){
                curentWeek.append(weekday)
                
            }
            
        }
        
    }
    func exsanshenDate(date:Date ,format:String)-> String {
        let formatter = DateFormatter()
        formatter.dateFormat = format
       return formatter.string(from: date)
        
    }
    func isToday(date:Date)-> Bool{
        let canlendar =  Calendar.current
        return canlendar.isDate(curentDate, inSameDayAs: date)
        
    }
}
