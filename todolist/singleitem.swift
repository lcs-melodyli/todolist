//
//  singleitem.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftUI

struct singleitem: View {
    @Binding var currentItem: ToDoItem
    
    var body: some View {
        Label(title: {
            Text(currentItem.title)
        }, icon: {
            Image(systemName: currentItem.done == true ? "checkmark.circle" : "circle")
                .onTapGesture {
                    currentItem.done.toggle()
                }
        })
            
    }
}

#Preview {
    List{
        singleitem(currentItem: Binding.constant(firstItem))
        singleitem(currentItem: Binding.constant(SecondItem))
    }
}
