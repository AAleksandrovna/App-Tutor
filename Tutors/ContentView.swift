//
//  ContentView.swift
//  Tutors
//
//  Created by Анастасия Восколович on 06.05.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive = false
    
    var tutors: [Tutor] = []
    var body: some View {
        NavigationView {
        List(tutors) { tutor in
            TutorCell(tutor: tutor)
            }.navigationBarTitle(Text("Tutors"))
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(tutors: testData)
            .previewInterfaceOrientation(.portrait)
    }
}
#endif

struct TutorCell: View {
    @State private var isActive = false
    let tutor: Tutor
    
    var body: some View {
        return NavigationLink(destination: TutorDetail(name: tutor.name, headline: tutor.headline, bio: tutor.bio), isActive: self.$isActive) {
            Image(tutor.imageName)
                .cornerRadius (40)
            VStack(alignment: .leading) {
                Text(tutor.name)
                Text(tutor.headline)
                    .font(.subheadline)
                    .foregroundColor(Color(red: 0.132, green: 0.001, blue: 0.454))
            }
        }
    }
}
}
