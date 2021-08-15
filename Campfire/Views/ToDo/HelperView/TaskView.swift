//
//  TaskView.swift
//  Campfire
//
//  Created by Eʟᴅᴀʀ Tᴇɴɢɪᴢᴏᴠ on 15.08.2021.
//

import SwiftUI

struct TaskView: View {
    
    var task: Task
    
    var body: some View {
        ZStack(alignment: .center) {
            
            HStack {
                Image("Test")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .padding(.leading, 5)
                
                VStack(alignment: .leading, spacing: 8) {
                    HStack {
                        Text(task.title)
                            .font(.system(size: 20, weight: .bold, design: .rounded))
                        
                        Spacer()
                        
                        if task.completed {
                            Image(systemName: "checkmark.circle")
                                .foregroundColor(.green)
                        } else {
                            Image(systemName: "xmark.circle")
                                .foregroundColor(.red)
                        }
                        
                        Image(systemName: "ellipsis")
                            .rotationEffect(.degrees(90))
                            .foregroundColor(.gray)
                        
                    }
                    Text(task.decription)
                        .font(.system(size: 12, weight: .bold, design: .rounded))
                        .foregroundColor(.gray)
                        .lineLimit(2)
                    HStack {
                        Image(systemName: "deskclock")
                            .foregroundColor(.blue)
                            .frame(width: 19, height: 19)
                        Text("С \(task.fromTime):00 до \(task.toTime):00")
                            .font(.system(size: 13, weight: .bold, design: .rounded))
                            .foregroundColor(.blue)
                    }
                    
                    ZStack {
                        Capsule()
                            .frame(width: 70, height: 20)
                            .foregroundColor(.pink)
                        
                        Text(task.tag.rawValue)
                            .font(.system(size: 11, weight: .black, design: .rounded))
                            .foregroundColor(.white)
                    }
                }
                
                Spacer()
            }
        }
        .frame(width: UIScreen.main.bounds.width - 40,height: 130)
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
                .shadow(radius: 5, x: 0, y: 5)
        )
        .padding(.horizontal, 20)
        
    }
}

struct TaskView_Previews: PreviewProvider {
    static var previews: some View {
        ToDoView()
        
    }
}

    
