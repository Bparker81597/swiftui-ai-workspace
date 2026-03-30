//
//  SessionDetailView.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct SessionDetailView: View {
    let session: Session

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {

                // Header
                VStack(alignment: .leading, spacing: 10) {
                    Text(session.title)
                        .font(.largeTitle.bold())

                    HStack {
                        Label(session.modelName, systemImage: "cpu")
                            .foregroundStyle(.secondary)

                        Spacer()

                        StatusBadge(status: session.status)
                    }
                }

                // Prompt summary
                infoCard(
                    title: "Prompt Summary",
                    content: session.promptSummary
                )

                // Evaluation notes
                infoCard(
                    title: "Evaluation Notes",
                    content: "Check correctness, readability, edge case handling, and alignment with intended UI behavior."
                )

                // Actions
                VStack(spacing: 12) {
                    PrimaryButton(title: "Approve Output")

                    PrimaryButton(title: "Needs Revision")

                    NavigationLink {
                        FeedbackFormView()
                    } label: {
                        Text("Report Issue")
                            .frame(maxWidth: .infinity)
                            .padding()
                    }
                    .buttonStyle(.bordered)
                }
            }
            .padding()
        }
        .navigationTitle("Session Detail")
        .navigationBarTitleDisplayMode(.inline)
    }

    // Reusable card
    private func infoCard(title: String, content: String) -> some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(title)
                .font(.headline)

            Text(content)
                .font(.body)
                .foregroundStyle(.secondary)
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(Color(.secondarySystemBackground))
        )
    }
}

#Preview {
    NavigationStack {
        SessionDetailView(
            session: Session(
                title: "SwiftUI layout cleanup",
                modelName: "GPT-4.1",
                promptSummary: "Refactor dashboard cards for better spacing and hierarchy.",
                status: .approved,
                lastUpdated: "2h ago"
            )
        )
    }
}
