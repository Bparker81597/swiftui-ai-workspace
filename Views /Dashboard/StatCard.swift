//
//  StatCard.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct StatCard: View {
    let stat: AppStat

    var body: some View {
        HStack(spacing: 16) {
            VStack(alignment: .leading, spacing: 8) {
                Text(stat.label)
                    .font(.subheadline)
                    .foregroundStyle(.secondary)

                Text(stat.value)
                    .font(.system(size: 30, weight: .bold))
            }

            Spacer()

            Image(systemName: "chart.bar.fill")
                .font(.title2)
                .padding(12)
                .background(.thinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 14))
        }
        .padding(20)
        .background(
            RoundedRectangle(cornerRadius: 24)
                .fill(Color(.secondarySystemBackground))
        )
    }}

#Preview {
    StatCard(stat: AppStat(label: "Active Sessions", value: "12"))
        .padding()
}
