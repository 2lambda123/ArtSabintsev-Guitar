//
//  GuitarCommon.swift
//  GuitarExample
//
//  Created by Arthur Sabintsev on 4/10/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import Foundation

public extension Guitar {

    /// Tests a string to check if it is a valid email address by using a regular expression.
    ///
    /// - Parameters:
    ///     - email: The string that needs to be evaluated.
    ///
    /// - Returns: `true` if `string` is a valid email address, otherwise `false`.
    static func isValidEmail(email: String) -> Bool {
        return Guitar(chord: .email).test(string: email)
    }

    /// Sanitizes of a string by removing all non-Alphanumeric characters (excluding whitespaces)
    ///
    /// - Parameter string: The string that should be sanitized.
    /// - Returns: The sanitized string.
    static func sanitze(string: String) -> String {
        return Guitar(chord: .nonAlphanumeric).replaceOccurences(in: string, with: " ").trimmingCharacters(in: .whitespacesAndNewlines)
    }

}
