//
//  GalaxisApp.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 30/04/21.
//

import SwiftUI

@main
struct GalaxisApp: App {
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    LearnersView()
                }
                .tabItem {
                    Label("Learners", systemImage: "book") }
                NavigationView{
                    DiscussionView()
                }
                .tabItem {
                    Label("Discussion", systemImage: "person.3") }
                NavigationView{
                    MyPortfolioView()
                }
                .tabItem {
                    Label("My Portfolio", systemImage: "pencil") }
            }
            
        }
    }
}
