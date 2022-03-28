import Alamofire

enum Costants {
    static let booksURL = "https://api.itbook.store/1.0/new"
    static let infoBooksURL = "https://api.itbook.store/1.0/books/"
}

final class NetworkManager {
    // MARK: - Identifier
    
    static let instance = NetworkManager()

    // MARK: - Get Isbn

    func getBooks(completion: @escaping (Isbn) -> Void) {
        AF.request(Costants.booksURL).responseDecodable(of: Isbn.self) { response in
            switch response.result {
            case .success(let model):
                completion(model)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    // MARK: - Get Books
    
    func getInfoBooks(isbn: String, completion: @escaping (Books) -> Void) {
        AF.request(Costants.infoBooksURL + isbn).responseDecodable(of: Books.self) { response in
            switch response.result {
            case .success(let model):
                completion(model)
            case .failure(let error):
                print(error)
            }
        }
    }
    
    private init() {}
}
