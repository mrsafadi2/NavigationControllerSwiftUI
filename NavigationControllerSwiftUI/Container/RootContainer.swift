//
//  RootContainer.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import SwiftUI
import UIKit

class RootContainer {

    var flowCoordinator: FlowCoordinator

    init(flowCoordinator: FlowCoordinator) {
        self.flowCoordinator = flowCoordinator
    }
    
//    func HomeRootView() -> UIViewController{
//        let vc = ContentView().environmentObject(flowCoordinator)
//        return LightHostingController(rootView: vc)
//    }
    
    func LoginRootView() -> UIViewController{
        let vc = View1().environmentObject(flowCoordinator)
        return LightHostingController(rootView: vc)
    }
}
