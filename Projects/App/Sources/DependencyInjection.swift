// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import ColorConverter
import ColorConverterInterface
import Dependencies
import Foundation
import LineSorter
import LineSorterInterface

private enum ColorConverterKey: DependencyKey {

    static let liveValue = ColorConverterBuilder()

}

private enum LineSorterKey: DependencyKey {

    static let liveValue = LineSorterBuilder()

}

extension DependencyValues {

    public var colorConverterBuilder: ColorConverterBuilder {
        get { self[ColorConverterKey.self] }
        set { self[ColorConverterKey.self] = newValue }
    }

    public var lineSorterBuilder: LineSorterBuilder {
        get { self[LineSorterKey.self] }
        set { self[LineSorterKey.self] = newValue }
    }
}
