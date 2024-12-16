//
//  CheckView.swift
//  habitforge
//
//  Created by Sarah Chen on 12/15/24.
//

import SwiftUI

struct CheckView: View {
    @State var isChecked:Bool = false
    var title : String
    func toggle(){ isChecked = !isChecked }
    var body: some View {
        HStack{
            Button(action: toggle) {
                Image(systemName: isChecked ? "checkmark.square" : "square")
            }
            Text(title)
        }
    }
}

