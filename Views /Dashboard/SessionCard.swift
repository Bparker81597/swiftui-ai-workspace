//
//  SessionCard.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct SessionCard: View {
    let session: Session
    
    var body: some View {
        VStack(alignment: .leading, spacing: 14) {
            HStack(alignment: .top) {
                Text(session.title)
                    .font(.headline)
                
                Spacer()
                
                StatusBadge(status: session.status)
            }
            
            Text(session.promptSummary)
                .font(.subheadline)
                .foregroundStyle(.secondary)
                .lineLimit(2)
            
            Divider()
            
            HStack {
                Label(session.modelName, systemImage: "cpu")
                    .font(.caption)
                    .foregroundStyle(.secondary)
                
                Spacer()
                
                Text(session.lastUpdated)
                    .font(.caption)
                    .foregroundStyle(.secondary)
            }
        }
        .padding(18)
        .background(
            RoundedRectangle(cornerRadius: 22)
                .fill(Color(.secondarySystemBackground))
        )
    }
}
    #Preview {
        SessionCard(
            session: Session(
                title: "SwiftUI layout cleanup",
                modelName: "GPT-4.1",
                promptSummary: "Refactor dashboard cards for better spacing and hierarchy.",
                status: .approved,
                lastUpdated: "2h ago"
            )
        )
        .padding()
    }

