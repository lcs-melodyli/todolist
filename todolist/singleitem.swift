//
//  singleitem.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftData
import SwiftUI

struct singleitem: View {
    @Bindable var currentItem: ToDoItem
    
    var body: some View {
        Label(title: {
            TextField("Enter a to-do item", text: $currentItem.title, axis: .vertical)
        }, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                .onTapGesture {
                    currentItem.done.toggle()
                }
        })
            
    }
}

#Preview {
    
    let container = ToDoItem.preview
    
    return List {
        singleitem(currentItem: ToDoItem.someItem)
        singleitem(currentItem: ToDoItem.anotherItem)
    }
    .modelContainer(container)
    
}
