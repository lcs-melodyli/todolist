//
//  ToDoItem.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-08.
//

import SwiftData

@Model
class ToDoItem: Identifiable {
    var title: String
    var done: Bool
    init(title: String, done: Bool) {
        self.title = title
        self.done = done
    }
    
}

extension ToDoItem {
    
    @MainActor
    static var preview: ModelContainer {
        
        let container = try! ModelContainer(
            for: ToDoItem.self,
            configurations: ModelConfiguration(isStoredInMemoryOnly: true)
        )
        
        // Add mock data
        container.mainContext.insert(
            ToDoItem(title: "Go for a walk", done: false)
        )
        container.mainContext.insert(
            ToDoItem(title: "Have a nap", done: true)
        )
        container.mainContext.insert(
            ToDoItem(title: "Call mom", done: false)
        )

        return container
    }
}

extension ToDoItem {
    
    static let someItem = ToDoItem(title: "Read a book", done: true)
    static let anotherItem = ToDoItem(title: "Make a sandwich", done: false)

}
