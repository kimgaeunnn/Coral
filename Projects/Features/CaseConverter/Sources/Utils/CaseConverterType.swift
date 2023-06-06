// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import Foundation

public enum CaseConverterType: Equatable, Identifiable, CaseIterable {
    case snake
    case camel

    public var id: String {
        title
    }

    var title: String {
        switch self {
        case .snake: return "🐍 Snake"
        case .camel: return "🐪 Camel"
        }
    }

    func convert(_ input: String) -> String {
        switch self {
        case .snake:
            return input.snakeCased() ?? input
        case .camel:
            return input.camelCased() ?? input
        }
    }

}

extension String {

    fileprivate func snakeCased() -> String? {
        let pattern = "([a-z0-9])([A-Z])"

        let regex = try? NSRegularExpression(pattern: pattern, options: [])
        let range = NSRange(location: 0, length: count)
        return regex?.stringByReplacingMatches(in: self, options: [], range: range, withTemplate: "$1_$2").lowercased()
    }

    fileprivate func camelCased() -> String? {
        guard let expr = try? NSRegularExpression(pattern: "_([a-z])") else { return nil }
        var result = self
        for match in expr.matches(in: self, range: NSRange(0 ..< result.count)).reversed() {
            guard let range = Range(match.range, in: self),
                let letterRange = Range(match.range(at: 1), in: self)
            else {
                return nil
            }
            result.replaceSubrange(range, with: self[letterRange].uppercased())
        }
        return result
    }

}
