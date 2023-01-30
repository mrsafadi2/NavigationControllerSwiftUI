//
//  Address.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 30/01/2023.
//

import SwiftUI

struct Address: View {
    var name:String
    @EnvironmentObject var orderVM:OrderVM
    
    var body: some View {
        Text("Hello, World! \(name)")
        
            .onAppear(){
                
                orderVM.name = "test test "
                print(orderVM.name)
            }
    }

}

struct Address_Previews: PreviewProvider {
    static var previews: some View {
        Address(name: "")
    }
}
