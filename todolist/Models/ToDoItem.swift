//
//  ToDoItem.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-08.
//

import Foundation

struct ToDoItem: Identifiable{
    let id = UUID()
    var title: String
    var done: Bool
}

let firstItem = ToDoItem(title: "Study for chemistry quiz", done: false )
let SecondItem = ToDoItem(title: "Finish computer science assignment", done: true )
let ThirdItem = ToDoItem(title: "Go for a run around campus", done: true )

let exampleItems = [
   firstItem,
    SecondItem,
    ThirdItem,
]
