//
//  TDD5App.swift
//  TDD5
//
//  Created by Jordan Fraughton on 6/10/24.
//

import SwiftUI

@main
struct TDD5App: App {
    var body: some Scene {
        WindowGroup {
            LoginView(loginViewModel: LoginViewModel())
        }
    }
}

