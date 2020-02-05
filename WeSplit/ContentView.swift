//
//  ContentView.swift
//  WeSplit
//
//  Created by Crittenden, Rey  on 2/5/20.
//  Copyright © 2020 Crittenden, Rey . All rights reserved.
//

import SwiftUI

struct ContentView: View {//Forces ContentView to abide by View rules/requirements
    let students = ["Biily", "Bob", "Harry", "Harper", "Henry"]//An array of students
    @State private var selectedStudent = 0//Represents a selected student in the Picker
    
    var body: some View{
        VStack{
            Picker("Select your student: ", selection: $selectedStudent){//Stores selected student as array index in Picker{}
                ForEach(0 ..< students.count){//.count is the increment of each array index
                    Text(self.students[$0])//"$0" is the variable referencing the students.count (students.count is the incrementer; 0 is the incrementer's reference)
                }
            }
            Text("You chose: Student # \(students[selectedStudent])")
        }
        
        /* Examples of Foreach
        Form{
            ForEach(0 ..< 100){
                Text("Row \($0)")//$0 replaces the need to use a newly made variable
            }
            
            ForEach(0 ..< 100){number in//Loops a view; in this case, view displays values from 0 to 100
                Text("Row \(number)")
            }
             */
        }
    /*@State var name = "";//Possibly private
    
    var body: some View{
        Form{
            TextField("Enter name: ", text: $name)//TextField stores input in var
            Text("WAAAAAAAAAAAAAh")
            Text("Your name is \(name)")
        }
    }
 */
    
/*    @State var tapCount = 0//@State alows this specific variable to be modified during app runtime

    var body: some View{
        Button("Tap Count: \(tapCount)"){//Defines text of a button
            self.tapCount += 1//"self." accesses the specific view
        }
    }
 */
    /*
    var body: some View {//Requires the return of the protocol, in this case "View"
        NavigationView{//Gives extra space so visually the view doesn't end up getting covered by the size of the iPhone
            Form{//This is the programming wrap for adding toggles, buttons, etc... If you want to add more then 10, every group of ten needs to be wrapped in Group{}.
                Section{//Section{} visually separates the views.
                    Text("Hello, World!")
                }
            }
        .navigationBarTitle("SwiftUI")//Places text in NavigationBar for better appearance (.something adds an additional form)
        }
    }
 */
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
/*
 Random Stuff:
 Modifying Program State:
 A state is the active collection of settings that define the current position an app is in; this is how games save data so you can return where you left off
 "Views are a function of their state" - what can be interacted with is based on the current state
 
 Binding State to User Interface Controls:
 The "$" works with "@State" to allow any user input to update along with the view
 
 Creating Views a Loop:
 
 */
