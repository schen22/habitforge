//
//  CounterView.swift
//  habitforge
//
//  Created by Sarah Chen on 12/15/24.
//

import SwiftUI

struct CounterView: View {
  @State var totalCount:Int = 0
  var title : Habit
  func increment(){ totalCount += 1 }
  func decrement(){
    if (totalCount > 0) {
      totalCount -= 1
    }
  }
  var body: some View {
    HStack{
      Text(title.name)
      Button(action: decrement) {
        Image(systemName: "minus")
      }
      Text(String(totalCount))
      Button(action: increment) {
        Image(systemName: "plus")
      }
    }
  }
}
