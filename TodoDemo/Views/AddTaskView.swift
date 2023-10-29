//
//  AddTaskView.swift
//  TodoDemo
//
//  Created by Luciano dii Souza on 29/10/23.
//

import SwiftUI

struct AddTaskView: View {
    @EnvironmentObject var realmManager: RealmManager
    @State private var title: String = ""
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Create a new task")
                .font(.title2).bold()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            TextField("Enter you task here", text: $title)
                .textFieldStyle(.roundedBorder)
            
            Button {
                if title != "" {
                    realmManager.addTask(taskTitle: title)
                }
                dismiss()
            } label: {
                Text("Add task")
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal)
                    .background(Color(hue: 0.328, saturation: 0.796, brightness: 0.488))
                    .cornerRadius(30)
            }
            
            Spacer()
            
        }
        .padding(.top, 40)
        .padding(.horizontal)
        .background(Color(hue: 0.086, saturation: 0.141, brightness: 0.972))
    }
}

#Preview {
    AddTaskView()
        .environmentObject(RealmManager())
}
