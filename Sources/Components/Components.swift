//
//  Components.swift
//
//
//  Created by Umut Sever on 20.11.2024.
//

import Foundation
import SwiftUI

public struct CustomButton: View {
    private var title: String
    private var action: () -> Void

    public init(title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .font(.headline)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(8)
        }
        .padding(.horizontal)
    }
}
