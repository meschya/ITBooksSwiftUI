import Kingfisher
import SwiftUI

struct BookInfoView: View {
    @State var book: Books
    @State var text = ""
    var body: some View {
        ScrollView {
            VStack {
                KFImage(URL(string: book.image)!)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 220, height: 320)
                    .imageStyle()
                Text("by \(book.authors)")
                    .font(.system(size: 15, weight: .medium))
                    .multilineTextAlignment(.center)
                    .opacity(0.4)
                    .padding(.horizontal, 10)
                Text(book.title)
                    .font(.system(size: 20, weight: .bold))
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 5)
                    .padding(.horizontal, 10)
                TextEditor(text: $book.desc)
                    .padding(.horizontal, 10)
                    .frame(height: 200)
                    .font(.system(size: 15, weight: .medium))
                    .opacity(0.4)
                Button("Buy for \(book.price)") {
                    print("")
                }
                .buttonStyle()
            }
            .navigationTitle("Book")
        }
    }
}

// struct BookInfo_Previews: PreviewProvider {
//    static var previews: some View {
//        BookInfo()
//    }
// }
