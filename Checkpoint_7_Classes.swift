// xcode: set sdk=iOS

import Foundation
// Checkpoint 7: Classes

class Animal {
    var legs: Int = 4
}

class Dog: Animal {
    func speak() {
        print("Woof! Woof! Woof!")
    }
}
class Cat: Animal {
    let isTame: Bool
    
    init(isTame: Bool) {
        self.isTame = isTame
    }
    
    func speak() {
        print("Meow! Meow! Meow!")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Yip! Yip! Yap!")
    }
}
class Poodle: Dog {
    override func speak() {
        print("Arf! Arf! Arf!")
    }
}

class Persian: Cat {
    override func speak() {
        print("Mew-mew-mew...")
    }
}
class Lion: Cat {
    override func speak() {
        print("Huff-huff-huff...")
    }
}

