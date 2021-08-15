//
//  ToDoView.swift
//  Campfire
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 15.08.2021.
//

import SwiftUI

struct ToDoView: View {
    
    var tasks = [
        Task(title: "Дела по дому", decription: "Выбросить мусор а потом туда сюда обратно и туда сюда", fromTime: 10, toTime: 13, tag: .home, completed: false),
        Task(title: "Дела по дому", decription: "Выбросить мусор а потом туда сюда обратно и туда сюда", fromTime: 10, toTime: 13, tag: .reading, completed: false),
        Task(title: "Дела по дому", decription: "Выбросить мусор а потом туда сюда обратно и туда сюда", fromTime: 10, toTime: 13, tag: .work, completed: false),
    ]
    
    var body: some View {
        ZStack {
            Color.theme.background
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .leading) {
                topBar
                
                taskLabel
                
                ScrollView(.vertical) {
                    
                    VStack(spacing: 20) {
                        
                        ForEach(tasks) { task in
                            TaskView(task: task)
                        }
                    }
                }
                
                Spacer()
            }
        }
    }
}

struct ToDoView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
    }
}

extension ToDoView {
    
    private var topBar: some View {
        HStack {
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                        .opacity(0.3)
                        .background(Color.white)
                        .cornerRadius(10)
                    Image(systemName: "square.grid.2x2")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 17, height: 17)
                    
                }
            })
            
            Spacer()
            
            Text("26 Февраля")
                .font(.system(size: 20, weight: .bold, design: .rounded))
                .foregroundColor(.gray)
            
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .stroke()
                        .frame(width: 40, height: 40)
                        .foregroundColor(.blue)
                        .opacity(0.3)
                        .background(Color.white)
                        .cornerRadius(10)
                    Image(systemName: "plus")
                        .resizable()
                        .foregroundColor(.black)
                        .frame(width: 17, height: 17)
                }
            })
        }
        .padding(.horizontal, 20)
    }
    
    private var taskLabel: some View {
        HStack {
            VStack(alignment: .leading) {
                Text("Задачи")
                    .font(.system(size: 25, weight: .bold, design: .rounded))
                Text("Не завершенo: 5")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
                    .padding(.leading, 1)
            }
            Spacer()
        }
        .padding(.horizontal, 20)
        .padding(.top)
    }
}
