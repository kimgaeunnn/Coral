// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import Foundation

public enum CaseConverterType: Equatable, Identifiable, CaseIterable {

    case snake
    case camel
    case pascal
    case parameter
    case constant

    public var id: String {
        title
    }

    var title: String {
        switch self {
        case .snake: return "🐍 snake_case"
        case .camel: return "🐪 camelCase"
        case .pascal: return "📐 PascalCase"
        case .parameter: return "🅿️ param-case"
        case .constant: return "🔠 CONSTANT_CASE"
        }
    }

    func convert(_ input: String) -> String {
        input.split(whereSeparator: \.isNewline)
            .map { convertLine(String($0)) }
            .joined(separator: "\n")
    }

    func convertLine(_ input: String) -> String {
        switch self {
        case .snake:
            return input.snakeCased()
        case .camel:
            return input.camelCased()
        case .pascal:
            return input.pascalCased()
        case .parameter:
            return input.parameterCased()
        case .constant:
            return input.constantCased()
        }
    }

}

extension String {
    fileprivate func tokenized() -> [String] {
        return capitalSeparated()
            .lowercased()
            .components(separatedBy: [" ", "_", "-"])
    }

    fileprivate func capitalSeparated() -> String {
        guard let regex = try? NSRegularExpression(pattern: "([a-z]+)([A-Z])") else {
            return self
        }
        return
            regex
            .stringByReplacingMatches(
                in: self,
                range: NSRange(0 ..< utf16.count),
                withTemplate: "$1 $2"
            )
            .trimmingCharacters(in: .whitespacesAndNewlines)
    }

    fileprivate func snakeCased() -> String {
        tokenized()
            .map { $0.lowercased() }
            .joined(separator: "_")
    }

    fileprivate func camelCased() -> String {
        var tokenized = tokenized()
        let first = tokenized.removeFirst()
        return first + tokenized.map(\.capitalized).joined()
    }

    fileprivate func parameterCased() -> String {
        tokenized()
            .joined(separator: "-")
    }

    fileprivate func constantCased() -> String {
        tokenized()
            .map { $0.uppercased() }
            .joined(separator: "_")
    }

    fileprivate func pascalCased() -> String {
        tokenized().map(\.capitalized).joined()
    }
}
