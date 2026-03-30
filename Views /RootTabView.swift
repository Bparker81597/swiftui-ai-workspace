//
//  RootTabView.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            NavigationStack {
                Text("Dashboard coming soon")
            }
            .tabItem {
                Label("Dashboard", systemImage: "square.grid.2x2")
            }

            NavigationStack {
                FeedbackFormView()
            }
            .tabItem {
                Label("Report", systemImage: "exclamationmark.bubble")
            }

            NavigationStack {
                ComponentShowcaseView()
            }
            .tabItem {
                Label("Components", systemImage: "square.stack.3d.up")
            }
        }
    }
}

#Preview {
    RootTabView()
}
