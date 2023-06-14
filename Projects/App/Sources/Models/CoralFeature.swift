// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import Foundation

enum CoralFeature: CaseIterable, Identifiable {

    case colorConverter
    case caseConverter
    case lineSorter

    var id: CoralFeature { self }

    var title: String {
        switch self {
        case .colorConverter: return "🎨 Color Converter"
        case .caseConverter: return "🐪 Case Converter"
        case .lineSorter: return "🏛️ Line Sorter"
        }
    }

}
