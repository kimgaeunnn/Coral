// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import CaseConverter
import CaseConverterTesting
import Foundation
import XCTest

final class CaseConverterTests: XCTestCase {

    func test_example() {
        CaseConverterMock.hello()
        XCTAssertEqual("CaseConverter", "CaseConverter")
    }

}
