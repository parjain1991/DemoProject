//
//  CarFormView.swift
//  CarApp
//
//  Created by Parul Jain on 08/12/21.
//

import SwiftUI

struct CarFormView: View {
    
    var body: some View {
//        Text("Colored ")
//                    .foregroundColor(.red)
//                +
//                Text("SwifUI ")
//                    .foregroundColor(.green)
//                +
        Text("Downtown Bus")
            .borderedCaption()
//        List {
//                    Group {
//                        Text("Row 1")
//                        Text("Row 2")
//                        Text("Row 3")
//                        Text("Row 4")
//                        Text("Row 5")
//                        Text("Row 6")
//                    }
//
//                    Group {
//                        Text("Row 7")
//                        Text("Row 8")
//                        Text("Row 9")
//                        Text("Row 10")
//                        Text("Row 11")
//                    }
//                }
//        NavigationView {
//            ZStack {
//                Color.gray.edgesIgnoringSafeArea(.all)
//                VStack {
//                    FormView()
//                        .frame(height: 220)
//                    Text("$20000")
//                        .font(.title)
//                        .fontWeight(.bold)
//                    Button(action:{}) {
//                        Text("Complete Order").textCase(.uppercase)
//                            .padding()
//                            .foregroundColor(.white)
//                    }
//                    .frame(minWidth: 0, maxWidth: .infinity)
//                    .frame(height:40)
//                    .background(Color.black)
//                    .font(.subheadline)
//                    .cornerRadius(10)
//                    .padding(10)
//                    Spacer()
//
//                }
//            }
//            .navigationBarHidden(true)
//        }
    }
}

struct BorderedCaption: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding(10)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                .stroke(lineWidth: 1)
            )
            .font(.caption2)
            .foregroundColor(Color.blue)
           
    }
}

extension View {
    func borderedCaption() -> some View {
        modifier(BorderedCaption())
    }
}

struct CarFormView_Previews: PreviewProvider {
    static var previews: some View {
        CarFormView()
    }
}

struct FormView: View {
    init(){
            UITableView.appearance().backgroundColor = .clear
    }
    var locations = ["Gurgaon","Lajpat Nagar","Chandni Chowk"]
    @State private var username = ""
    @State private var isDriverOn = true
    @State private var pickupLocation = "Delhi"
    @State private var dropLocation = "Noida"
    var body: some View {
        Form {
            Section {
                Group {
                   // TextField("User name", text: $username)
                   //     .font(.headline)
                    Toggle("Drivers", isOn: $isDriverOn)
                }
                .foregroundColor(Color.black)
            }
            .listRowBackground(Color.gray)
            Section {
                Group {
                    Picker("Select Pickup locaton", selection: $pickupLocation) {
                        ForEach(0..<locations.count) { value in
                            Text(locations[value])
                        }
                    }
                    
                    Picker("Select Drop locaton", selection: $dropLocation) {
                        ForEach(0..<locations.count) { value in
                            Text(locations[value])
                        }
                    }
                }
                .foregroundColor(Color.black)
            }.listRowBackground(Color.gray)
            
        }
        .background(Color.gray)
    }
}
