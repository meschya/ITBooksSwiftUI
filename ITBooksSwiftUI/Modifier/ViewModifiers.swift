import SwiftUI

struct ImageStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .cornerRadius(10)
            .background(Rectangle().fill(Color.white)
                .cornerRadius(20)
                .shadow(color: .black,
                        radius: 5,
                        x: 0,
                        y: 0)
                .opacity(0.5))
    }
}

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .background(
                Rectangle()
                    .fill()
                    .cornerRadius(20)
                    .frame(width: 200, height: 50)
            )
            .padding(.vertical, 25)
    }
}

extension View {
    func imageStyle() -> some View {
        modifier(ImageStyle())
    }

    func buttonStyle() -> some View {
        modifier(ButtonStyle())
    }
}
