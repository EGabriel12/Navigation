//
//  FirstScreen.swift
//  Navigation
//
//  Created by Elias Gabriel dos Santos Correa on 07/11/24.
//

import SwiftUI

struct FirstScreen: View {

  @State var isNavigating: Bool = false

  var body: some View {
    Button(action: {
      print("Tapped button")
      isNavigating = true
    }, label: {
      Text("Go to second screen")
    })
    .navigationDestination(isPresented: $isNavigating) {
      SecondScreen()
    }
  }
}

#Preview {
  FirstScreen()
}
