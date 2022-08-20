//
//  SecondView.swift
//  CW8
//
//  Created by Shhooda on 20/08/2022.
//

import Foundation
import SwiftUI
 
struct SecondView: View{
    let myC : Color
    let myS : String
    var body: some View {
        ZStack{
            Color.white
                myC.ignoresSafeArea()
            VStack{
                Text(myS)
            }
        }
    }
}
struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
