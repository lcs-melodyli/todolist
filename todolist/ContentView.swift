//
//  ContentView.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftUI

struct ContentView: View {
    @State var newItemDescription: String = ""
    @State var searchText = ""
    var body: some View {
        NavigationView{
            VStack{
                List{
                    
                }
                .searchable(text: $searchText)
                HStack{}
                    .padding(20)
            }
            .navigationTitle("To do")
        }
    }
}

#Preview {
    ContentView()
}
