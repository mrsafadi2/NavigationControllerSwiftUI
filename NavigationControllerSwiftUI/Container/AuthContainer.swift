//
//  AuthContainer.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 30/01/2023.
//

import SwiftUI
import UIKit

class AuthContainer{
    
    var flowCoordinator: FlowCoordinator
    
    init(flowCoordinator: FlowCoordinator) {
        self.flowCoordinator = flowCoordinator
    }
    
    func LoginRootView() -> UIViewController{
        let vc = View1()
        return LightHostingController(rootView: vc)
    }
    
    func registerView() -> UIViewController {
        let vc = Register()
        return LightHostingController(rootView: vc)

    }
}
