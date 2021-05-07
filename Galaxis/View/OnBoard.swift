//
//  OnBoard.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 06/05/21.
//

import SwiftUI

struct OnBoard: View {
    var body: some View {
        NavigationLink(
            destination: LearnersView(),
            label: {
                /*@START_MENU_TOKEN@*/Text("Navigate")/*@END_MENU_TOKEN@*/
            })
    }
}

struct OnBoard_Previews: PreviewProvider {
    static var previews: some View {
        OnBoard()
    }
}
