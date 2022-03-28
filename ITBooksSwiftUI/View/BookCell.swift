import SwiftUI
import Kingfisher

struct BookCell: View {
    @State var nameBook: String
    @State var bookImage: String
    @State var authorBook: String
    @State var price: String
    var body: some View {
        HStack(alignment: .center, spacing: 15) {
            KFImage(URL(string: bookImage))
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 120,height: 170)
                .cornerRadius(10)
                .background(Rectangle().fill(Color.white)
                                .cornerRadius(20)
                                .shadow(color: .black,
                                        radius: 5,
                                        x: 0,
                                        y: 0)
                                .opacity(0.5))
            VStack(alignment: .leading) {
                Text(nameBook)
                    .font(.system(size: 20, weight: .bold))
                Text("by \(authorBook)")
                    .font(.system(size: 15, weight: .medium))
                    .foregroundColor(.gray)
                    .lineLimit(2)
                Text(price)
                    .font(.system(size: 25, weight: .semibold))
                    .padding(.vertical)
            }
            Spacer()
        }
    }
}
