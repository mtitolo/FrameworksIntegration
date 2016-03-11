//
//  TestTapTheButton.swift
//  FrameworksIntegration
//
//  Created by Titolo, Michele on 3/10/16.
//  Copyright © 2016 Titolo, Michele. All rights reserved.
//

import XCTest
import KIF

class TestTapTheButton: KIFTestCase {

    func testTapTheButton() {
        tester.tapViewWithAccessibilityLabel("The Button")
    }

}
