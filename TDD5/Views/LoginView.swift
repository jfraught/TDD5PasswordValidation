//
//  LoginView.swift
//  TDD5
//
//  Created by Jordan Fraughton on 6/10/24.
//

import SwiftUI

struct LoginView: View {
    @State var loginViewModel: LoginViewModel
    
    var body: some View {
        let password = loginViewModel.password
        
        VStack {
            HStack {
                Image(systemName: "lock.fill")
                TextField("Password", text: $loginViewModel.password.value)
                    .textFieldStyle(.roundedBorder)
                Spacer()
            }
            VStack {
                PasswordRequirementRowView(
                    passwordRequirement: "Contain 8 to 30 characters",
                    passwordRequiermentIsValid: loginViewModel.password.hasCorrectCharCount)
                PasswordRequirementRowView(
                    passwordRequirement: "Contain both lower and uppercase letters",
                    passwordRequiermentIsValid: password.hasUpperAndLower)
                PasswordRequirementRowView(
                    passwordRequirement: "Contain a number",
                    passwordRequiermentIsValid: password.hasNumber)
                PasswordRequirementRowView(
                    passwordRequirement: "Contains a special character",
                    passwordRequiermentIsValid: password.hasSpecialCharacter)
                PasswordRequirementRowView(
                    passwordRequirement: "Not contain letter or number sequences like abc' '123' °4444* qwerty",
                    passwordRequiermentIsValid: !password.hasSequences)
            }
    
        }
        .padding()
    }
}

#Preview {
    LoginView(loginViewModel: LoginViewModel())
}
