//
//  CustomNavigation.swift
//  BaseSwiftUI2022
//
//  Created by i mac on 19/09/2022.
//

import UIKit
import SwiftUI

class CustomeNavigation: UINavigationController, UINavigationControllerDelegate {

    override var preferredStatusBarStyle: UIStatusBarStyle {
        return topViewController?.preferredStatusBarStyle ?? .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let appearance = UINavigationBarAppearance()
        appearance.configureWithTransparentBackground()
        appearance.backgroundColor = UIColor.orange
        appearance.shadowImage = nil
        appearance.backgroundImage = nil
        appearance.shadowColor = nil
        // appearance.titleTextAttributes  = [.font : UIFont(name: "FFShamelFamily-UniqueMedium", size: 14)!,NSAttributedString.Key.foregroundColor: UIColor(named: "Title")!]
         appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]

        let barButtonAppearance = UIBarButtonItemAppearance()
        barButtonAppearance.normal.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.clear]

        appearance.backButtonAppearance = barButtonAppearance
         let backImage = UIImage(systemName: "arrow.backward")
        appearance.setBackIndicatorImage(backImage, transitionMaskImage: backImage)

        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
        UINavigationBar.appearance().compactScrollEdgeAppearance = appearance
        UINavigationBar.appearance().tintColor = UIColor.white


    }
    
    func navigationController(_ navigationController: UINavigationController, willShow viewController: UIViewController, animated: Bool) {
        viewController.navigationItem.backButtonDisplayMode = .minimal
    }

}

class DarkHostingController<ContentView>: UIHostingController<ContentView> where ContentView: View {
    override dynamic open var preferredStatusBarStyle: UIStatusBarStyle {
        .darkContent
    }
}

class LightHostingController<ContentView>: UIHostingController<ContentView> where ContentView: View {
    override dynamic open var preferredStatusBarStyle: UIStatusBarStyle {
        .lightContent
    }
}
