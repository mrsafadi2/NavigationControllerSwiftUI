//
//  MainContainer.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 30/01/2023.
//

import SwiftUI
import UIKit

class MainContainer {
    
    var flowCoordinator: FlowCoordinator
    
    init(flowCoordinator: FlowCoordinator) {
        self.flowCoordinator = flowCoordinator
    }

    func HomeRootView() -> UIViewController{
        let vc = ContentView(mainCoordinator : MainCoordinator(flowCoordinator: flowCoordinator, mainContainer: self))
        return LightHostingController(rootView: vc)
    }
    
    
    func addressView(orderVM:OrderVM) -> UIViewController{
        let vc = Address(name: "test").environmentObject(orderVM)
        return LightHostingController(rootView: vc)
    }
    
    
}
