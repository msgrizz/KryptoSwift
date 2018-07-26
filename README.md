# KryptoSwift
🔱 CommonCrypto in Swift, and more!

## Features

- Work on NSData, String
- Message Digest, SHA, HMAC, Base64
- Hash Algorithm: MD2, MD4, MD5, SHA1, SHA256, SHA224, SHA384, SHA512

### Hash

```swift
Hash.MD5("https://www.google.com/logos/doodles/2016/parents-day-in-korea-5757703554072576-hp2x.jpg") // 0dfb10e8d2ae771b3b3ed4544139644e
Hash.SHA246("https://www.google.com/logos/doodles/2016/parents-day-in-korea-5757703554072576-hp2x.jpg") // cb051d58a60b9581ff4c7ba63da07f9170f61bfbebab4a39898432ec970c3754
```

### HMAC

```swift
HMAC.SHA1("https://www.google.com/logos/doodles/2016/parents-day-in-korea-5757703554072576-hp2x.jpg", key: "google") // 5f4474c8872d73c1490241ab015f6c672c6dcdc8
```

### Base64

```swift
Base64.SHA1("https://www.google.com/logos/doodles/2016/parents-day-in-korea-5757703554072576-hp2x.jpg", key: "google") // X0R0yIctc8FJAkGrAV9sZyxtzcg=
```

### AES

```swift
let _ = AES.encrypt("string", key: "secret")
let _ = AES.decrypt(data, key: keyData)
```


### Obfuscator

```swift
let obfuscator = Obfuscator(value: "").a.b.c.d.e.n1.n2.X.Y.Z // "abcde12XYZ"
```

### Usign key generation

```swift
let str = "My little secret"
let password = AES256CBC.generatePassword()  // returns random 32 char string

// get AES-256 CBC encrypted string
let encrypted = AES256CBC.encryptString(str, password: password)

// decrypt AES-256 CBC encrypted string
let decrypted = AES256CBC.decryptString(encrypted!, password: password)
```

### Using KryptoSwiftAES256

```swift
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
```

## Installation

**Arcane** is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'KryptoSwift'
```

**Arcane** is also available through [Carthage](https://github.com/Carthage/Carthage).
To install just write into your Cartfile:

```ruby
github "msgrizz/KryptoSwift"
```

## Author

Mihail Salari, KryptoSwift@gmail.com

## Contributing

We would love you to contribute to **KryptoSwift**, check the [CONTRIBUTING](https://github.com/msgrizz/KryptoSwift/blob/master/CONTRIBUTING.md) file for more info.

## License

**KryptoSwift** is available under the MIT license. See the [LICENSE](https://github.com/msgrizz/KryptoSwift/blob/master/LICENSE.md) file for more info.
