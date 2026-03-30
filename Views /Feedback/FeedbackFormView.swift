//
//  FeedbackFormView.swift
//  SwiftUIAIWorkspace
//
//  Created by myMac on 3/30/26.
//

import SwiftUI

struct FeedbackFormView: View {
    @State private var issueTitle = ""
    @State private var severity = "Medium"
    @State private var steps = ""
    @State private var expectedResult = ""
    @State private var actualResult = ""

    let severities = ["Low", "Medium", "High", "Critical"]

    var body: some View {
        Form {
            Section("Issue Details") {
                TextField("Issue title", text: $issueTitle)

                Picker("Severity", selection: $severity) {
                    ForEach(severities, id: \.self) { level in
                        Text(level)
                    }
                }
            }

            Section("Reproduction Steps") {
                TextEditor(text: $steps)
                    .frame(minHeight: 120)
            }

            Section("Expected Result") {
                TextEditor(text: $expectedResult)
                    .frame(minHeight: 100)
            }

            Section("Actual Result") {
                TextEditor(text: $actualResult)
                    .frame(minHeight: 100)
            }

            Section {
                Button("Submit Report") {
                    print("Report submitted")
                }
                .frame(maxWidth: .infinity)
            }
        }
        .navigationTitle("Report Issue")
    }
}

#Preview {
    NavigationStack {
        FeedbackFormView()
    }
}
