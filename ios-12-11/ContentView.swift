//
//  ContentView.swift
//  ios-12-11
//
//  Created by Yuanchuang Wang on 2024/12/11.
//

import SwiftUI

struct ContentView: View {
    @State private var showAlert = false

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: {
                showAlert = true
            }) {
                Text("Show Alert")
            }
            .alert(isPresented: $showAlert) {
                Alert(
                    title: Text("Hello"),
                    message: Text("This is an alert message."),
                    dismissButton: .default(Text("OK"))
                )
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
