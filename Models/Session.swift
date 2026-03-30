//
//  Session.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import Foundation

struct Session: Identifiable {
    let id = UUID()
    let title: String
    let modelName: String
    let promptSummary: String
    let status: SessionStatus
    let lastUpdated: String
}

enum SessionStatus: String, CaseIterable {
    case approved = "Approved"
    case needsReview = "Needs Review"
    case flagged = "Flagged"
    case inProgress = "In Progress"
}

