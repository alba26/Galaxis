//
//  LearnerDetailView.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 02/05/21.
//

import SwiftUI

struct LearnerDetailView: View {
    let learner: Learner
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                Image(learner.imageName)
                    .resizable()
                    .scaledToFit()
            }
            VStack(alignment: .leading, spacing:15){
                HStack(alignment: .center){
                    Spacer()
                    VStack{
                        Text("Shift")
                            .bold()
                            .font(.callout)
                        Text(learner.shift)
                            .font(.footnote)
                        
                    }
                    Divider()
                        .frame(height: 50)
                        .background(Color.secondary)
                    VStack{
                        Text("LQ")
                            .bold()
                            .font(.callout)
                        Text("LQ 6 - Jaya")
                            .font(.footnote)
                    }
                    .padding()
                    Divider()
                        .frame(height: 50)
                        .background(Color.secondary)
                    VStack{
                        Text("Role")
                            .bold()
                            .font(.callout)
                        Text(learner.role)
                            .font(.footnote)
                    }
                    
                    Spacer()
                }
                Divider()
                Group{
                    VStack(alignment: .leading, spacing: 5){
                        Text("About Me")
                            .bold()
                            .font(.callout)
                        Text(learner.aboutMe)
                            .font(.footnote)
                            .fixedSize(horizontal: false, vertical: true)
                    }
                    Divider()
                    VStack(alignment: .leading,spacing: 5 ){
                        Text("Interest")
                            .bold()
                            .font(.callout)
                        Text(learner.interest)
                            .font(.footnote)
                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text("Expertise")
                            .bold()
                            .font(.callout)
                        Text(learner.expertise)
                            .font(.footnote)
                        
                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text(learner.nama.components(separatedBy: " ")[0] + "'s Project")
                            .bold()
                            .font(.callout)
                        Text(learner.hobby)
                            .font(.footnote)
                    }
                    Divider()
                    VStack(alignment: .leading){
                        Text("Hobby")
                            .bold()
                            .font(.callout)
                        Text(learner.hobby)
                            .font(.footnote)
                    }
                }
                
                
            }
            .padding(.leading)
            .padding(.trailing)
            .navigationBarTitle(learner.nama)
          
        }
    
        
    }
    
    
}


struct LearnerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        LearnerDetailView(learner: Learner.example)
    }
}
