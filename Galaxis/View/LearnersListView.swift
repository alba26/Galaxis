//
//  LearnersListView.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 03/05/21.
//

import SwiftUI

struct LearnersListView: View {
    let learner: Learner
    var body: some View {
        HStack{
            AvatarView(img: learner.imageName)
            VStack(alignment: .leading, spacing: 2){
//                Text(learner.interest.joined(separator: ", "))
                Text(learner.shortDescription)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    
                Text(learner.nama)
                    .font(.body)
                Text(learner.interest)
                    .font(.caption)
                    .multilineTextAlignment(.leading)
                    

            }
        }
        
    }
}

struct LearnersListView_Previews: PreviewProvider {
    static var previews: some View {
        LearnersListView(learner: Learner.example)
    }
}
