//
//  Created by Mihail Salari
//  Copyright © 2018 Mihail Salari. All rights reserved.
//

import Foundation

public extension Data {

    // MARK: - Hex String
    var hexString: String {
        var result = ""

        var bytes = [UInt8](repeating: 0, count: count)
        copyBytes(to: &bytes, count: count)

        for byte in bytes {
            result += String(format: "%02x", UInt(byte))
        }

        return result
    }


    // MARK: - Base64
    var base64: Data {
        return base64EncodedData(options: [])
    }

    var base64String: String {
        return base64EncodedString(options: [])
    }
}

public extension Data {
  public var aesHexString: String {
    return map { String(format: "%02hhx", $0) }.joined()
  }
}
