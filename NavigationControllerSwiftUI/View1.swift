//
//  View1.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import SwiftUI

struct View1: View {

    var authCoordinator:AuthCoordinator
    
    init(authCoordinator: AuthCoordinator) {
        self.authCoordinator = authCoordinator
    }
    
    var body: some View {
        VStack {
            Text("Login as View1, World!")
            
            Button {
                authCoordinator.navigateToRegister()
            } label: {
                Text("Push Register View")
            }

        }
           
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1(authCoordinator: AuthCoordinator(flowController: FlowCoordinator(window: UIWindow.init()), authContainer: AuthContainer(flowCoordinator: FlowCoordinator(window: UIWindow.init()))))
    }
}
