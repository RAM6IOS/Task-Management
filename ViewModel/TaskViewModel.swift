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
}
