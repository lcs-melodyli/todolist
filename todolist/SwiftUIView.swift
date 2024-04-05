//
//  SwiftUIView.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftUI

struct SwiftUIView: View {
    let title: String
    var body: some View {
        HStack{
            Image(systemName: "checkmark.circle")
                .resizable()
                .scaledToFit()
                .frame(width: 25)
                 VStack {
                Text(title)
                    .font(.title3)
                    .bold()
            }
        }
            
    }
}

#Preview {
    SwiftUIView(title: "hello")
}
