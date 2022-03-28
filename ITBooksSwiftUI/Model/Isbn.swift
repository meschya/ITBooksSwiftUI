import Foundation

// MARK: - ITBook
struct Isbn: Codable {
    let books: [Book]
}

// MARK: - Book
struct Book: Codable {
    let isbn13: String
}

