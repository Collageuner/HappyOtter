//
//  Tasks.swift
//  Collageuner
//
//  Created by KYUBO A. SHIM on 2023/01/25.
//

import UIKit

import RealmSwift

class Tasks: Object {
    @Persisted(primaryKey: true) var _id: ObjectId
    
    @Persisted var taskTimeZone: String
    @Persisted var taskTime: Date
    @Persisted var taskImage: String?
//    @Persisted var taskThumbnailImage: String? // 이것도 VM 에서 처리
    // taskCount 는 VM 에서 처리
    @Persisted var mainTask: String
    @Persisted var subTasks = List<String>()
    @Persisted var taskExpiredCheck: Bool = false // 0
    @Persisted var taskCompleted: Bool = false // 0
    
    convenience init(taskTimeZone: String, taskTime: Date, taskImage: String? = nil, mainTask: String, subTasks: List<String>, taskExpiredCheck: Bool, taskCompleted: Bool) {
        self.init()   
        
        self.taskTimeZone = taskTimeZone
        self.taskTime = taskTime
        self.taskImage = taskImage
        self.mainTask = mainTask
        self.subTasks = subTasks
        self.taskExpiredCheck = taskExpiredCheck
        self.taskCompleted = taskCompleted
    }
}
