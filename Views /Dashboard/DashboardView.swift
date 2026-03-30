//
//  DashboardView.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct DashboardView: View {
    @StateObject private var viewModel = DashboardViewModel()

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 24) {
                header

                VStack(spacing: 12) {
                    ForEach(viewModel.stats) { stat in
                        StatCard(stat: stat)
                    }
                }

                VStack(alignment: .leading, spacing: 12) {
                    SectionHeader(
                        title: "Active Sessions",
                        subtitle: "Review current AI-assisted coding tasks"
                    )

                    ForEach(viewModel.sessions) { session in
                        NavigationLink {
                            SessionDetailView(session: session)
                        } label: {
                            SessionCard(session: session)
                        }
                        .buttonStyle(.plain)
                    }
                }

                VStack(alignment: .leading, spacing: 12) {
                    SectionHeader(
                        title: "Recent Feedback",
                        subtitle: "Latest filed reports"
                    )

                    ForEach(viewModel.recentFeedback) { item in
                        VStack(alignment: .leading, spacing: 10) {
                            Text(item.title)
                                .font(.headline)

                            HStack {
                                Label("Severity: \(item.severity)", systemImage: "exclamationmark.triangle")
                                    .font(.subheadline)
                                    .foregroundStyle(.secondary)
                                Spacer()

                                Text(item.status)
                                    .font(.caption)
                                    .padding(.horizontal, 10)
                                    .padding(.vertical, 6)
                                    .background(.thinMaterial)
                                    .clipShape(Capsule())
                            }
                        }
                        .padding(18)
                        .background(
                            RoundedRectangle(cornerRadius: 22)
                                .fill(Color(.secondarySystemBackground))
                        )
                    }
                }
            }
            .padding()
        }
        .navigationTitle("AI Workspace")
    }

    private var header: some View {
        VStack(alignment: .leading, spacing: 24) {
            Text("AI Workspace")
                .font(.largeTitle.bold())

            Text("Review sessions, monitor flagged outputs, and file structured feedback with a clean workflow.")
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .fixedSize(horizontal: false, vertical: true)
        }
            
    }
}

#Preview {
    NavigationStack {
        DashboardView()
    }
}
