//
//  ContentView.swift
//  habitforge
//
//  Created by Sarah Chen on 12/15/24.
//

import SwiftUI

struct ContentView: View {
  // TODO: store counts somehow
  @State var daysStreak = String(0)
  @State var totalDays = String(0)
  @State private var selectedHabit: Habit = Habit(name: "")

  // TODO: store in some controller
  @State var habits = [
    Habit(name: "derping"),
    Habit(name: "running"),
    Habit(name: "bugging others")
  ]
  
    var body: some View {
      VStack(alignment: .leading) {
        // tracker
          Text(daysStreak).underline().bold()
          + Text(" DAYS")
          Text("SINCE I STARTED")
          Picker("habits", selection: $selectedHabit) {
            ForEach(habits, id: \.self) { habit in
              Text(habit.name)
            }
          }
          .border(.green)
          .background(.green)
          .cornerRadius(20)
          .accentColor(.black)
        }
        .padding()
//        .frame(maxWidth: .infinity, alignment:.leading)
      // self-report
        
//      Text("Today, I")
//      List(checkListData){ item in
//          CheckView(isChecked: item.isChecked, title: item.title)
//      }
      
      CounterView(title: selectedHabit)

//      List([SelectedHabit(habit: Habit(name: "breathed"), isChecked: true)]) { item in
//        CheckView(isChecked: item.isChecked, title: item.habit.name)
//      }
//      .font(.title)
    }
  
}

struct Habit: Hashable {
  var id = UUID()
  var name : String
}

struct SelectedHabit: Identifiable {
  var id = UUID()
  var habit: Habit
  var isChecked: Bool
}



#Preview {
    ContentView()
}
