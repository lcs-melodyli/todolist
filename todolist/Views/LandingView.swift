//
//  ContentView.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftData
import SwiftUI

struct LandingView: View {
    @State var newItemDescription: String = ""
    @State var searchText = ""
    @Environment(\.modelContext) var modelContext
    @State var todos: [ToDoItem] = exampleItems
    var body: some View {
        NavigationView{
            VStack{
                List($todos){ $todo in
                    singleitem(currentItem: $todo)
                        .swipeActions{
                            Button(
                                "Delete",
                                role: .destructive,
                                action: {
                                    delete(todo)
                                }
                            )
                        }
                        
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("Add"){
                        createToDo(withTitle: newItemDescription)
                    }
                    .font(.caption)
                    .disabled(newItemDescription.isEmpty ==/*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/)
                }
                .padding(20)
                
            }
            .navigationTitle("To do")
            }
            
                
            }
    func createToDo(withTitle title : String){
        let todo = ToDoItem(
            title: title, done: false
        )
        todos.append(todo)
    }
    func delete(_ todo:ToDoItem){
        todos.removeAll() {
            currentItem in currentItem.id == todo.id
        }
    }
        }
  
//#Preview {
    //LandingView()
//}
