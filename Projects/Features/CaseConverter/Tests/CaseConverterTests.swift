// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import Foundation
import XCTest
import CaseConverter
import CaseConverterTesting

final class CaseConverterTests: XCTestCase {

    func test_example() {
        CaseConverterMock.hello()
        XCTAssertEqual("CaseConverter", "CaseConverter")
    }

}
