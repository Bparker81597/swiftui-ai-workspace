//
//  StatusBadge.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct StatusBadge: View {
    let status: SessionStatus

    var body: some View {
        Text(status.rawValue)
            .font(.caption.weight(.semibold))
            .padding(.horizontal, 12)
            .padding(.vertical, 7)
            .background(.thinMaterial)
            .clipShape(Capsule())
    }
}

#Preview {
    StatusBadge(status: .approved)
}

