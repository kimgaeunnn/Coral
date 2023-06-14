// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import CoralKit
import LineSorterInterface
import SwiftUI

public struct LineSorterBuilder: Buildable {

    public init() {}

    public func callAsFunction(
        _ dependency: LineSorterDependency
    ) -> LineSorterScreen {
        let way = LineSorterWay(
            initialState: .init(
                input: "",
                output: "",
                lineSortType: .alphabetically,
                orderType: .ordered
            )
        )
        return LineSorterScreen(way: way)
    }

}
