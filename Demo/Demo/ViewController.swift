//
//  ViewController.swift
//  Demo
//
//  Created by Mihail Salari on 7/25/18.
//  Copyright © 2018 ICS "Endava" SRL. All rights reserved.
//

import UIKit
import KryptoSwift

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    
    do {
      let digest = "hello world".data(using: .utf8)!
      let password = "foo"
      let salt = KryptoSwiftAES256.randomSalt()
      let iv = KryptoSwiftAES256.randomIv()
      let key = try KryptoSwiftAES256.createKey(password: password.data(using: .utf8)!, salt: salt)
      let aes = try KryptoSwiftAES256(key: key, iv: iv)
      let encrypted = try aes.encrypt(digest)
      let decrypted = try aes.decrypt(encrypted)
      
      print("Encrypted: \(encrypted.hexString)")
      print("Decrypted: \(decrypted.hexString)")
      print("Password: \(password)")
      print("Key: \(key.hexString)")
      print("IV: \(iv.hexString)")
      print("Salt: \(salt.hexString)")
      print(" ")
      
      print("#! /bin/sh")
      print("echo \(digest.hexString) | xxd -r -p > digest.txt")
      print("echo \(encrypted.hexString) | xxd -r -p > encrypted.txt")
      print("openssl aes-256-cbc -K \(key.hexString) -iv \(iv.hexString) -e -in digest.txt -out encrypted-openssl.txt")
      print("openssl aes-256-cbc -K \(key.hexString) -iv \(iv.hexString) -d -in encrypted.txt -out decrypted-openssl.txt")
    } catch {
      print("Failed")
      print(error)
    }
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

