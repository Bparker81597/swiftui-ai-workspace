//
//  PrimaryButton.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct PrimaryButton: View {
    let title: String

    var body: some View {
        Button(action: {}) {
            Text(title)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity)
                .padding()
        }
        .buttonStyle(.borderedProminent)
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}

#Preview {
    PrimaryButton(title: "Primary Action")
        .padding()
}
