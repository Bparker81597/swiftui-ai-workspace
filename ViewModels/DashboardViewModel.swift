//
//  DashboardViewModel.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI
import Foundation
import Combine


final class DashboardViewModel: ObservableObject {
    @Published var stats: [AppStat] = [
        AppStat(label: "Active Sessions", value: "12"),
        AppStat(label: "Flagged Outputs", value: "3"),
        AppStat(label: "Reports Filed", value: "18")
    ]

    @Published var sessions: [Session] = [
        Session(
            title: "SwiftUI layout cleanup",
            modelName: "GPT-4.1",
            promptSummary: "Refactor dashboard cards for better spacing and hierarchy.",
            status: .approved,
            lastUpdated: "2h ago"
        ),
        Session(
            title: "Feedback form validation",
            modelName: "Claude",
            promptSummary: "Generate validation logic for report submission flow.",
            status: .needsReview,
            lastUpdated: "4h ago"
        ),
        Session(
            title: "Navigation bug trace",
            modelName: "Cursor Agent",
            promptSummary: "Investigate broken navigation after tab switch.",
            status: .flagged,
            lastUpdated: "1d ago"
        )
    ]

    @Published var recentFeedback: [FeedbackItem] = [
        FeedbackItem(title: "Incorrect button state", severity: "Medium", status: "Open"),
        FeedbackItem(title: "Layout shift on load", severity: "High", status: "Investigating"),
        FeedbackItem(title: "Missing error message", severity: "Low", status: "Resolved")
    ]
}

