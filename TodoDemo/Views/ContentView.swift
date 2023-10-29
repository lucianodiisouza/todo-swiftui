//
//  ContentView.swift
//  TodoDemo
//
//  Created by Luciano dii Souza on 29/10/23.
//

import SwiftUI

struct ContentView: View {
    @State private var showAddTaskView: Bool = false;
    
    
    var body: some View {
        ZStack (alignment: .bottomTrailing) {
            TasksView()
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTaskView.toggle()
                }
        }
        .sheet(isPresented: $showAddTaskView) {
            AddTaskView()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

#Preview {
    ContentView()
}
