import Combine

final class BookListViewModel: ObservableObject {
    // MARK: - Properties

    @Published var isbn: Isbn? {
        didSet {
            if let isbn = isbn {
                for books in isbn.books {
                    fetchDataBooks(isbn: books.isbn13)
                }
            }
        }
    }

    @Published var books: [Books] = []
    @Published var isLoading: Bool = false

    // MARK: - Networking

    // MARK: Public

    func fetchDataIsbn() {
        isLoading = true
        NetworkManager.instance.getBooks { isbn in
            self.isLoading = false
            self.isbn = isbn
        }
    }

    // MARK: Private

    private func fetchDataBooks(isbn: String) {
        isLoading = true
        NetworkManager.instance.getInfoBooks(isbn: isbn) { infoBooks in
            self.isLoading = false
            self.books.append(infoBooks)
        }
    }
}
