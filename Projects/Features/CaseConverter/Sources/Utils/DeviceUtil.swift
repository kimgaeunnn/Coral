// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import AppKit
import Foundation

enum DeviceUtil {

    enum Pastboard {
        static func saveOnPasteboard(_ string: String) {
            let pasteboard = NSPasteboard.general
            pasteboard.declareTypes([.string], owner: nil)
            pasteboard.setString(string, forType: .string)
        }
    }

}
