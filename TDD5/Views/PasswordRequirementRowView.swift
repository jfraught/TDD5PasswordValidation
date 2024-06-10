//
//  PasswordRequirementRowView.swift
//  TDD5
//
//  Created by Jordan Fraughton on 6/10/24.
//

import SwiftUI

struct PasswordRequirementRowView: View {
    let passwordRequirement: String
    let passwordRequiermentIsValid: Bool
    
    var body: some View {
        HStack {
            Image(systemName: passwordRequiermentIsValid ? "checkmark.circle.fill" : "x.circle.fill")
                .foregroundStyle(passwordRequiermentIsValid ? .green : .red)
            Text(passwordRequirement)
            Spacer()
        }
    }
}

