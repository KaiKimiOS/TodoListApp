//
//  ViewModel.swift
//  TodoListPractice
//
//  Created by kaikim on 2023/07/07.
//

import Foundation



class TodoViewModel:ObservableObject {
    
    @Published var lists: [TodoModel] = [TodoModel(list: "이거완료하기", date: "2023-07-07"),
                                         
                                         TodoModel(list: "자야함", date: "2023-07-08")
                                         
                                         
    ]
    
    
    func add(list:String, date:String){
        
        guard list.count > 0 && date.count > 0  else {return}
        
        let addlist:TodoModel = TodoModel(list: list, date: date)
        
        
        lists.append(addlist)
        
        
    }
    
    
    func removeAll() {
        
        lists.removeAll()
    }
    
    
}
