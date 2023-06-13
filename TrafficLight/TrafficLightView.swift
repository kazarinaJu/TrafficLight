//
//  TrafficLightView.swift
//  TrafficLight
//
//  Created by Юлия Ястребова on 09.06.2023.
//

import SwiftUI

struct TrafficLightView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .gray, opacity: 1)
    }
}

