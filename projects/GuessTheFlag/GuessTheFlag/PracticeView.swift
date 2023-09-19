//
//  PracticeView.swift
//  GuessTheFlag
//
//  Created by Daniel Ardila on 9/17/23.
//

import SwiftUI

struct PracticeView: View {
    @State private var showingAlert = false
    @State private var showingAlert2 = false
    
    func executeDelete(){
        print("now deleting")
    }
    
    var body: some View {
        VStack {
            List {
                Section {
                    LinearGradient(gradient: Gradient(stops: [
                        Gradient.Stop(color: .red, location: 0.45),
                        Gradient.Stop(color: .blue, location: 0.55)]),
                                   startPoint: .top,
                                   endPoint: .bottom)
                    .frame(width: 200, height: 200)
                    
                    AngularGradient(colors: [.red, .blue, .cyan, .yellow, .green, .indigo, .red], center: .center)
                        .frame(width: 200, height: 200)
                    
                    RadialGradient(gradient: Gradient(colors: [.red, .blue]),
                                   center: .center, startRadius: 70, endRadius: 90)
                    .frame(width: 200, height: 200)
                }  header : {
                    Text("Gradients")
                }
                
                Section {
                    Button("Delete selection", role: .destructive, action: executeDelete)
                    
                    Button("Button 1"){ }
                        .buttonStyle(.bordered)
                    Button("Button 2", role: .destructive){ }
                        .buttonStyle(.bordered)
                    Button("Button 3"){ }
                        .buttonStyle(.borderedProminent)
                    Button("Button 4", role: .destructive){ }
                        .buttonStyle(.borderedProminent)
                    Button("Button 5", role: .cancel){ }
                        .buttonStyle(.borderedProminent)
                        .tint(.mint)
                } header: {
                    Text("Buttons")
                }
                
                Section {
                    
                    Button {
                        print("Edit Image button was tapped!")
                    } label: {
                        Image(systemName: "pencil")
                    }
                    
                    Button {
                        print("Edit button + image was tapped!")
                    } label: {
                        Label("Edit", systemImage: "pencil")
                    }
                    
                } header: {
                    Text("Button w/ images")
                }
                
                Section {
                    Button("Show Alert") {
                        showingAlert = true
                    }
                    .alert("Important Message", isPresented: $showingAlert) {
                        Button("Ok") {}
                    }
                    
                    Button("Show Alert 2") {
                        showingAlert2 = true
                    }
                    .alert("Important Message 2", isPresented: $showingAlert2) {
                        Button("Delete", role: .destructive) {}
                        Button("Cancel", role: .cancel){}
                    } message: {
                        Text("please read this")
                    }
                    
                } header: {
                    Text("Alerts")
                }
                
                
            }
        }
    }
    
    struct PracticeView_Previews: PreviewProvider {
        static var previews: some View {
            PracticeView()
        }
    }
}
