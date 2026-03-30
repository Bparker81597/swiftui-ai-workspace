//
//  ComponentShowcaseView.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct ComponentShowcaseView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                SectionHeader(
                    title: "Component Library",
                    subtitle: "Reusable UI pieces used across the app"
                )
                
                componentBlock(title: "Status Badges") {
                    HStack {
                        StatusBadge(status: .approved)
                        StatusBadge(status: .needsReview)
                        StatusBadge(status: .flagged)
                    }
                }
                
                componentBlock(title: "Buttons") {
                    PrimaryButton(title: "Primary Action")
                }
                
                componentBlock(title: "Sample Card") {
                    SessionCard(
                        session: Session(
                            title: "Component polish pass",
                            modelName: "GPT-4.1",
                            promptSummary: "Refine reusable card styling for dashboard consistency.",
                            status: .inProgress,
                            lastUpdated: "Just now"
                        )
                    )
                }
            }
            .padding()
        }
        .navigationTitle("Components")
    }
    
    @ViewBuilder
    private func componentBlock<Content: View>(title: String, @ViewBuilder content: () -> Content) -> some View {
        VStack(alignment: .leading, spacing: 14) {
            Text(title)
                .font(.headline)
            
            content()
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(Color(.secondarySystemBackground))
        )
    }
}
