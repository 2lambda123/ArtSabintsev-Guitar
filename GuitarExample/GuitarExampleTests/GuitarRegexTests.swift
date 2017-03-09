//
//  GuitarRegexTests.swift
//  GuitarExample
//
//  Created by Sabintsev, Arthur on 3/9/17.
//  Copyright © 2017 Arthur Ariel Sabintsev. All rights reserved.
//

import XCTest
@testable import Guitar

class GuitarRegexTests: XCTestCase {

    func testEmailMatching() {
        XCTAssertEqual(GuitarRegex(pattern: GuitarPattern.email).evaluate(string: "This is one email addresses: arthur@sabintsev.com. This is another [arthur@example.com].").count, 2)
    }

    func testIsValidEmail() {
        XCTAssertTrue(GuitarRegex.isValidEmail(email: "arthur@sabintsev.com"))
        XCTAssertTrue(GuitarRegex.isValidEmail(email: "arthur.sabintsev@example.com"))
        XCTAssertFalse(GuitarRegex.isValidEmail(email: "arthur.sabintsev@example"))
        XCTAssertFalse(GuitarRegex.isValidEmail(email: "arthur.sabintsev@x.y.z"))
    }

}
