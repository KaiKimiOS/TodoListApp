//
//  Model.swift
//  TodoListPractice
//
//  Created by kaikim on 2023/07/07.
//

import Foundation


struct TodoModel:Identifiable    {
    
    var id: UUID = UUID()
    var list: String
    var date: String
  
    
}
