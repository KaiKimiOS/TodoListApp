//
//  ContentView.swift
//  TodoListPractice
//
//  Created by kaikim on 2023/07/07.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var viewModelLists: TodoViewModel = TodoViewModel()
    
    
    var list: String = ""
    var date: String = ""
    @State var sheetBool: Bool = false
    @State var alertBool: Bool = false
    
    var body: some View {
        
        NavigationStack {
            VStack {
                
                List(viewModelLists.lists) { list in
                    
                    Text("\(list.list)")
                }
                
                ContentButtonView(alertBool: $alertBool)
                
                Spacer()
                
            }
            .listStyle(.automatic)
            .navigationTitle("Todo-List")
            .toolbar {
                ToolbarItem {
                    Button {
                        sheetBool = true
                    } label: {
                        Label("추가", systemImage: "plus")
                    }
                    
                }
                
            }
            .sheet(isPresented: $sheetBool, content: {
                
                AddView(todoViewModel: viewModelLists, list: list, date: date, sheetBool: $sheetBool)
                
                
                
            })
            .alert(isPresented: $alertBool, content: {
                Alert(title: Text("전체삭제를 진행할까요?"), primaryButton:
                        .default(Text("Delete"), action: {
                            
                            viewModelLists.removeAll()
                        }), secondaryButton: .cancel())
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
