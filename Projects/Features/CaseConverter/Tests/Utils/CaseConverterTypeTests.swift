// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import XCTest

@testable import CaseConverter

final class CaseConverterTypeTests: XCTestCase {

    func testSnakeToCamel() {
        do {
            let input = "snake_to_camel"
            let result = CaseConverterType.camel.convert(input)
            XCTAssertEqual(result, "snakeToCamel")
        }

        do {
            let input = "snake_t_camel"
            let result = CaseConverterType.camel.convert(input)
            XCTAssertEqual(result, "snakeTCamel")
        }

        do {
            let input = "snake"
            let result = CaseConverterType.camel.convert(input)
            XCTAssertEqual(result, "snake")
        }

        do {
            let input = "alreadyCamelCase"
            let result = CaseConverterType.camel.convert(input)
            XCTAssertEqual(result, "alreadyCamelCase")
        }
    }

    func testCamelToSnake() {
        do {
            let input = "camelToSnake"
            let result = CaseConverterType.snake.convert(input)
            XCTAssertEqual(result, "camel_to_snake")
        }

        do {
            let input = "camelToS"
            let result = CaseConverterType.snake.convert(input)
            XCTAssertEqual(result, "camel_to_s")
        }

        do {
            let input = "camel"
            let result = CaseConverterType.snake.convert(input)
            XCTAssertEqual(result, "camel")
        }

        do {
            let input = "already_snake_case"
            let result = CaseConverterType.snake.convert(input)
            XCTAssertEqual(result, "already_snake_case")
        }
    }

}
