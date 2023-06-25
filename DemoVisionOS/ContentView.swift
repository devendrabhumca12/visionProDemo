//
//  ContentView.swift
//  DemoVisionOS
//
//  Created by Devendra Agnihotri on 24/06/23.
//

import SwiftUI
import RealityKit
import RealityKitContent
struct Member: Identifiable {
    var id = UUID()
    var name: String
    var position: String
    var mobileNumber: String
}

struct ContentView: View {
    var biraTeam: [Member] = [
        Member(name: "Mani", position: "Architect", mobileNumber: "+1 123-456-7890"),
        Member(name: "Dhanesh", position: "Manager", mobileNumber: "+1 987-654-3210"),
        Member(name: "Ganesh", position: "iOS Developer", mobileNumber: "+1 987-654-3210"),
        Member(name: "Sumit", position: "iOS Developer", mobileNumber: "+1 987-654-3210"),
        Member(name: "Akshay Gupta", position: "iOS Developer", mobileNumber: "+1 987-654-3210"),
        Member(name: "Sawan Rana", position: "iOS Developer", mobileNumber: "+1 987-654-3210"),
        Member(name: "Divya", position: "iOS Developer", mobileNumber: "+1 987-654-3210"),
        Member(name: "Devendra", position: "iOS Developer", mobileNumber: "+1 987-654-3210"),
    ]
    var body: some View {
        NavigationSplitView {
            List {
                Text("Bira iOS Team")
            }
            .navigationTitle("Sidebar")
        } detail: {
            VStack {
                List(biraTeam) { member in
                    HStack(alignment: .top) {
                        Text(member.name)
                            .font(.headline)
                        Text(member.position)
                            .font(.subheadline)
                        Text(member.mobileNumber)
                            .font(.subheadline)
                            .foregroundColor(.gray)
                    }
                }
            }
            .navigationTitle("iOS Team Details")
            .padding()
        }
    }
}

#Preview {
    ContentView()
}



//struct ContentView: View {
//   
//    
//    var body: some View {
//        NavigationView {
//            List(biraTeam) { member in
//                VStack(alignment: .leading) {
//                    Text(member.name)
//                        .font(.headline)
//                    Text(member.position)
//                        .font(.subheadline)
//                    Text(member.mobileNumber)
//                        .font(.subheadline)
//                        .foregroundColor(.gray)
//                }
//            }
//            .navigationBarTitle("BIRA Team")
//        }
//    }
//}
