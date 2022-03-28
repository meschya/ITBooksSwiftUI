import SwiftUI

struct BookListView: View {
    
    // MARK: - Body
    @ObservedObject var viewModel: BookListViewModel
    
    var body: some View {
        NavigationView {
            List(viewModel.books, id: \.id) { book in
                NavigationLink {
                    BookInfoView(book: book)
                } label: {
                    BookCell(nameBook: book.title,
                             bookImage: book.image,
                             authorBook: book.authors,
                             price: book.price)
                    .frame(height: 190)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Book list")
        }
        .isLoading(viewModel.isLoading)
        .onAppear {
            viewModel.fetchDataIsbn()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView(viewModel: BookListViewModel())
    }
}
