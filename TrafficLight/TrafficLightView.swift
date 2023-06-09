//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Юлия Ястребова on 09.06.2023.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 100, height: 100)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 0)
            .padding()
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .gray)
    }
}
