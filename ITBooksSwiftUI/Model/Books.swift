import SwiftUI

// MARK: - Books

struct Books: Codable, Identifiable {
    var id = UUID().uuidString
    var title, authors, price, image, desc: String

    private enum Keys: String, CodingKey {
        case title, authors, price, image, desc
    }

    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: Keys.self)
        self.title = try container.decode(String.self, forKey: .title)
        self.authors = try container.decode(String.self, forKey: .authors)
        self.price = try container.decode(String.self, forKey: .price)
        self.image = try container.decode(String.self, forKey: .image)
        self.desc = try container.decode(String.self, forKey: .desc)
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: Keys.self)
        try container.encode(title, forKey: .title)
        try container.encode(authors, forKey: .authors)
        try container.encode(price, forKey: .price)
        try container.encode(image, forKey: .image)
        try container.encode(desc, forKey: .desc)
    }
}
