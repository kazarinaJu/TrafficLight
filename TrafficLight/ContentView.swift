//
//  ContentView.swift
//  TrafficLight
//
//  Created by Юлия Ястребова on 08.06.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var currentLight = CurrentLight.red
    @State private var buttonText = "START"
    
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    var body: some View {
        VStack {
            TrafficLightView(color: .red)
                .opacity(currentLight == .red ? lightIsOn : lightIsOff)
            TrafficLightView(color: .yellow)
                .opacity(currentLight == .yellow ? lightIsOn : lightIsOff)
            TrafficLightView(color: .green)
                .opacity(currentLight == .green ? lightIsOn : lightIsOff)

            Spacer()
            
            Button(action: { startButtonTapped() }) {
                Text(buttonText)
                    .foregroundColor(.white)
                    .font(.title.bold())
            }
                .buttonStyle(BorderlessButtonStyle())
                .frame(width: 200, height: 60)
                .background(.blue)
                .cornerRadius(20)
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.white, lineWidth: 4))
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension ContentView {
    private enum CurrentLight {
        case red, yellow, green
    }
    
    private func startButtonTapped() {
        if buttonText == "START" { buttonText = "NEXT" }

        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        }
    }
}
