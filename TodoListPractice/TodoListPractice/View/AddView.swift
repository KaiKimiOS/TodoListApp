//
//  AddView.swift
//  TodoListPractice
//
//  Created by kaikim on 2023/07/07.
//

import SwiftUI

struct AddView: View {
    
    
    var todoViewModel: TodoViewModel
    
    @State var list: String
    @State var date: String
    @Binding var sheetBool: Bool
    
    var body: some View {
        
        
        VStack{
            
            Spacer()
            Group {
                TextField("리스트 입력" , text: $list)
                
                TextField("날짜 입력" , text: $date)
            }.font(.largeTitle)
            Spacer()
            
            Button {
                todoViewModel.add(list: list, date: date)
                sheetBool = false
                
            } label: {
                Text("추가하기")
            }.font(.largeTitle)
            Spacer()
            
        }
        
        
        
        
    }
}

//struct AddView_Previews: PreviewProvider {
//    static var previews: some View {
//        AddView(list: "list", date: "date")
//    }
//}
