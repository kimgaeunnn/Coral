// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import Foundation
import LineSorter
import LineSorterTesting
import XCTest

final class LineSorterTests: XCTestCase {

    func test_example() {
        LineSorterMock.hello()
        XCTAssertEqual("LineSorter", "LineSorter")
    }

}
