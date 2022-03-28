import Foundation

@propertyWrapper
struct Positive {
    var value: Int = 0
    var wrappedValue: Int {
        get {
            return value
        }
        set {
            if value < 0 {
                value = 0
            }
        }
    }

    init(wrappedValue: Int) {
        self.wrappedValue = wrappedValue
    }
}
