//
//  AvatarView.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 03/05/21.
//

import SwiftUI

struct AvatarView: View {
    let img:String
    let WIDTH: CGFloat = 117
    let HEIGHT:CGFloat = 87
    
    var body: some View {
        Image(img)
            .resizable()
            .frame(width: WIDTH, height: HEIGHT)
            .cornerRadius(15)
    }
}

struct AvatarView_Previews: PreviewProvider {
    static var previews: some View {
        AvatarView(img: "Adhitya_Laksamana")
    }
}
