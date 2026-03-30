//
//  FeebackItem.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import Foundation

struct FeedbackItem: Identifiable {
    let id = UUID()
    let title: String
    let severity: String
    let status: String
}

