//
//  ContentView.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import SwiftUI

struct ContentView: View {

    var mainCoordinator : MainCoordinator
    @StateObject var orderVM:OrderVM  = OrderVM()
    
    init(mainCoordinator: MainCoordinator) {
        self.mainCoordinator = mainCoordinator
    }
    
    var body: some View {
             VStack {
                Image(systemName: "globe")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                Text("Home , world!")
                
                
                Button {
                    mainCoordinator.pushView2()
                } label: {
                     Text("Push View2 View")
                }
                 
                 Button {
                     mainCoordinator.presentView2()
                 } label: {
                      Text("Present Navigation View ")
                 }
                 
                 Button {
                     mainCoordinator.navigateToAddress(orderVM: orderVM)
                 } label: {
                      Text("Push Address View")
                 }

            }
            .padding()
            .navigationTitle("Home View")
            .toolbar {
                ToolbarItem {
                    Button {
                        mainCoordinator.pushLogin()
                    } label: {
                        Text("Login")
                    }

                }
            }
            .onReceive(orderVM.$name) { name in
                print(name)
            }

     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(mainCoordinator: MainCoordinator(flowCoordinator: FlowCoordinator(window: UIWindow.init()), mainContainer: MainContainer(flowCoordinator: FlowCoordinator(window: UIWindow.init()))))
    }
}
