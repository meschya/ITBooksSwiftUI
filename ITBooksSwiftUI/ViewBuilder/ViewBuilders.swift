import SwiftUI

extension View {
    @ViewBuilder
    func isLoading(_ isLoading: Bool) -> some View {
        ZStack {
            self
            if isLoading {
                LoadingView()
            }
        }
        .animation(.linear(duration: 0.2), value: isLoading)
    }
}
