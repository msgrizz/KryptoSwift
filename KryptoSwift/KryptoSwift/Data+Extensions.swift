//
//  Data+Extensions.swift
//  KryptoSwift
//
//  Created by Mihail Salari on 7/25/18.
//  Copyright © 2018 Mister Grizzly. All rights reserved.
//

import Foundation

public extension Data {
  public var hexString: String {
    return map { String(format: "%02hhx", $0) }.joined()
  }
}
