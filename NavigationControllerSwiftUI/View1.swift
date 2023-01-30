//
//  View1.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import SwiftUI

struct View1: View {
    @EnvironmentObject var flowCoordinator: FlowCoordinator

    var body: some View {
        Text("Login as View1, World!")
           
    }
}

struct View1_Previews: PreviewProvider {
    static var previews: some View {
        View1()
    }
}
