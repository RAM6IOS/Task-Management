//
//  Task.swift
//  Task Management
//
//  Created by Bouchedoub Ramzi on 27/3/2023.
//

import Foundation

struct Task:Identifiable{
    let id = UUID().uuidString
    let tasktitel : String
    let taskDescription:String
    var taskData:Date
    
}
