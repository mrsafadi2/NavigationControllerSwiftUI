//
//  SceneDelegate.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import Foundation
import UIKit
import SwiftUI

class SceneDelegate: NSObject, UIWindowSceneDelegate {

    var window: UIWindow?
    var flowCoordinator: FlowCoordinator!
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        flowCoordinator = FlowCoordinator(window: window)
        window.rootViewController = UIHostingController(rootView: Splash(actionOnFinish: flowCoordinator.showRootView))
        window.makeKeyAndVisible()

        print("SceneDelegate is connected!")

    }

    

    func sceneDidDisconnect(_ scene: UIScene) {
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
    }

    func sceneWillResignActive(_ scene: UIScene) {
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
    }

    
}

