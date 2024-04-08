//
//  singleitem.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftUI

struct singleitem: View {
    let currentItem: ToDoItem
    
    var body: some View {
        Label(title: {
            Text(currentItem.title)
        }, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
        })
            
    }
}

#Preview {
    List{
        singleitem(currentItem: firstItem)
        singleitem(currentItem: SecondItem)
    }
}
