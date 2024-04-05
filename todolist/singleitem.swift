//
//  singleitem.swift
//  todolist
//
//  Created by 利梓萌 on 2024-04-05.
//

import SwiftUI

struct singleitem: View {
    let title: String
    
    var body: some View {
        HStack{
            Image(systemName: "circle")
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
    singleitem(title: "HELLO")
}
