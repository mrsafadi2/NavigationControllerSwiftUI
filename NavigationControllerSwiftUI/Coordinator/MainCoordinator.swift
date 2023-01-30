//
//  MainCoordinator.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 30/01/2023.
//

import SwiftUI
import UIKit

class MainCoordinator:ObservableObject {
    
    var mainContainer: MainContainer
    var flowCoordinator: FlowCoordinator

    init(flowCoordinator: FlowCoordinator , mainContainer : MainContainer) {
        self.flowCoordinator = flowCoordinator
        self.mainContainer  = mainContainer
    }
    
    public func navigateToAddress() {
        flowCoordinator.navigationController.pushViewController(mainContainer.addressView(), animated: true)
    }
    
    
    public func pushView2(){
        let view = View2()
        let hostingView = UIHostingController(rootView: view)
        flowCoordinator.navigationController?.pushViewController(hostingView, animated: true)
    }
    
    
    public func presentView2(){
        let view = View2()
        let hostingView = UIHostingController(rootView: view)
        flowCoordinator.navigationController?.present(hostingView, animated: true)
    }
    
    public func pushLogin(){
        flowCoordinator.showAuthRoot()
        
    }
    
}
