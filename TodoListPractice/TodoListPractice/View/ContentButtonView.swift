//
//  ContentButtonView.swift
//  TodoListPractice
//
//  Created by kaikim on 2023/07/07.
//

import SwiftUI

struct ContentButtonView: View {
    
    @Binding var alertBool: Bool
    var body: some View {
        
        
        
        Button {
            alertBool = true
        } label: {
            Text("Button")
        }

    }
}

//struct ContentButtonView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentButtonView()
//    }
//}
