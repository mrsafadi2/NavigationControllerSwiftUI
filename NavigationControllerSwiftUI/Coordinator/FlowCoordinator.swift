//
//  FlowCoordinator.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import Foundation
import SwiftUI

class FlowCoordinator:ObservableObject {
    
    var window: UIWindow
    var navigationController: CustomeNavigation!

    var authContainer : AuthContainer!
    var mainContainer : MainContainer!

    var isLogin = true

    public init(window: UIWindow) {
        self.window = window
        navigationController = CustomeNavigation()
    }
    
    public func showRootView(){
        if isLogin {
            showMainRoot()
        }else{
            showAuthRoot()
        }
    }
    
    public func showAuthRoot() {
        authContainer = AuthContainer(flowCoordinator: self)
        navigationController = CustomeNavigation(rootViewController: authContainer.LoginRootView())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()
        UIView.transition(with: window, duration: 0.5, options: .transitionFlipFromLeft, animations: {
            self.window.rootViewController = self.navigationController
        }, completion: nil)


    }
    
    public func showMainRoot() {
        mainContainer = MainContainer(flowCoordinator: self)
        navigationController = CustomeNavigation(rootViewController: mainContainer.HomeRootView())
        window.rootViewController = navigationController
        window.makeKeyAndVisible()

    }
    
    

    
}

 
