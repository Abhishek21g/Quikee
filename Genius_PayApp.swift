//
//  Genius_PayApp.swift
//  Genius Pay
//
//  Created by Enaguthi Abhishek on 2/19/23.
//
import SwiftUI

@main

struct Genius_PayApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            contentView()
                .environment(.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

struct
ContentView: View {
    var body: some View {
        VStack {
            Text("Genius Pay")
                .font(.title)
                .fontWeight(.heavy)
                .foregroundColor(Color(hue: 1.0, saturation: 0.966, brightness: 0.039))
                .multilineTextAlignment(.center)
                .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                .popover(isPresented: /*@START_MENU_TOKEN@*/.constant(false)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Popover Content@*/Text("Popover Content")/*@END_MENU_TOKEN@*/
                }
            
            
            
            Text("Scan and Save Money and Nature")
                .font(.title2)
                .fontWeight(.bold)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
                .padding()
                .frame(width: nil)
                .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                .popover(isPresented: /*@START_MENU_TOKEN@*/.constant(false)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Popover Content@*/Text("Popover Content")/*@END_MENU_TOKEN@*/
                }

            Text("Licensed and Powered by Abhishek")
                .font(.callout)
                .fontWeight(.semibold)
                .foregroundColor(Color.red)
                .multilineTextAlignment(.center)
                .padding(.bottom, 50.0)
                .shadow(radius: /*@START_MENU_TOKEN@*/7/*@END_MENU_TOKEN@*/)
                .popover(isPresented: /*@START_MENU_TOKEN@*/.constant(false)/*@END_MENU_TOKEN@*/) {
                    /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Popover Content@*/Text("Popover Content")/*@END_MENU_TOKEN@*/
                }

        }
    }
}

