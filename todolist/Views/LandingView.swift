//
//  ContentView.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftUI

struct LandingView: View {
    @State var newItemDescription: String = ""
    @State var searchText = ""
    @State var todos: [ToDoItem] = exampleItems
    var body: some View {
        NavigationView{
            VStack{
                List(todos){ todo in
                    singleitem(currentItem: todo)
                    
                }
                .searchable(text: $searchText)
                HStack{
                    TextField("Enter a to-do item", text: $newItemDescription)
                    Button("Add"){
                        
                    }
                    .font(.caption)
                }
                .padding(20)
                
            }
            .navigationTitle("To do")
            }
            
                
            }
        }
  
#Preview {
    LandingView()
}
