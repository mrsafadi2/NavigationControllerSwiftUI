//
//  Splash.swift
//  NavigationControllerSwiftUI
//
//  Created by Mohammed Safadi Macbook Pro on 28/01/2023.
//

import SwiftUI

struct Splash: View {
    var actionOnFinish: () -> Void

    var body: some View {
            ZStack {
                Color.white.ignoresSafeArea()
                VStack {
                    VStack {
                        Image("logo")
                            .resizable()
                            .frame(width: 176,height: 50)
                            .scaledToFill()
                            .foregroundColor(.white)

                        Text("splashlbl")
                            .padding(.leading, 42)
                            .padding(.top, 18)
                            .foregroundColor(Color("Text"))




                        HStack(alignment : .center,spacing: 16){
                            Text("guarnty")
                            Text("speed")

                            Text("secure")

                        }.padding(.top,40)
                    }

                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                        actionOnFinish()
                    }
                }
            }


    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash(actionOnFinish: {})
    }
}
