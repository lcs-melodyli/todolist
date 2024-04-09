//
//  todolistApp.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftData
import SwiftUI

@main
struct todolistApp: App {
    var body: some Scene {
        WindowGroup {
            LandingView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
