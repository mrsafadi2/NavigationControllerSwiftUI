//
//  AuthCoordinator.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 30/01/2023.
//

import UIKit
import SwiftUI

class AuthCoordinator : ObservableObject {
    
    var authContainer: AuthContainer
    var flowController: FlowCoordinator

    init(flowController: FlowCoordinator , authContainer : AuthContainer) {
        self.flowController = flowController
        self.authContainer  = authContainer
    }
    
    
    public func navigateToRegister() {
        flowController.navigationController.pushViewController(authContainer.registerView(), animated: true)
    }
    

}
