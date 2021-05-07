//
//  ContentView.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 30/04/21.
//

import SwiftUI

struct LearnersView: View {
    @ObservedObject var fetchLearners = Learners()
    
    var body: some View{
        List(fetchLearners.learnerData, id: \.nama) { item in
            NavigationLink(destination: LearnerDetailView(learner: item))
            {
                LearnersListView(learner: item)}
        }
        
//        .padding(.trailing)
//        .listStyle(SidebarListStyle())
        .navigationTitle("Learners")
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LearnersView()
    }
}
