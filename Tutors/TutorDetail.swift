//
//  TutorDetail.swift
//  Tutors
//
//  Created by Анастасия Восколович on 12.05.2022.
//

import SwiftUI

struct TutorDetail: View {
    var name: String
    var headline: String
    var bio: String
    var body: some View {
        VStack {
            Image(name)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.blue, lineWidth: 3))
                .shadow(radius: 10)
            Text(name)
                .font(.title)
                .foregroundColor(Color.blue)
            Text(headline)
                .font(.headline)
            Divider()
            Text(bio)
                .font(.subheadline)
                .multilineTextAlignment(.center)
        }.padding().navigationBarTitle(Text(name), displayMode: .inline)
    }
}

struct TutorDetail_Previews: PreviewProvider {
    static var previews: some View {
        TutorDetail(name: "Simon Ng", headline: "Founder of AppCoda", bio: "Founder of AppCoda. Author of multiple iOS programming books including Beginning iOS 12 Programming with Swift and Intermediate iOS 12 Programming with Swift. iOS Developer and Blogger.")
    }
}
