import SwiftUI

struct TabBarItem: View, Identifiable {
    @Binding var selectedItem: SelectedItem
    var smartView: SelectedItem
    
    let id = UUID()
    var icon: String
    let size: CGFloat = 32
    
    func isSelected() -> Bool { return selectedItem == smartView }
    
    var body: some View {
        Button(action: { self.selectedItem = self.smartView }) {
            if isSelected() { buttonDown } else { buttonUp }
        }
    }
    
    private var buttonUp: some View {
        var buttonMask: some View {
            ZStack {
                Rectangle()
                    .foregroundColor(.white)
                    .frame(width: size * 2, height: size * 2)
                Image(systemName: self.icon)
                    .resizable()
                    .scaledToFit()
                    .frame(width: size, height: size)
            }
        }
        var button: some View {
            ZStack {
                LinearGradient.lairHorizontalDarkReverse
                    .frame(width: size, height: size)
                Rectangle()
                    .inverseMask(buttonMask)
                    .frame(width: size * 2, height: size * 2)
                    .foregroundColor(.lairBackgroundGray)
                    .shadow(color: .lairShadowGray, radius: 3, x: 3, y: 3)
                    .shadow(color: .white, radius: 3, x: -3, y: -3)
                    .clipShape(RoundedRectangle(cornerRadius: size * 8 / 16))
            }
            .compositingGroup()
            .shadow(color: Color.white.opacity(0.9), radius: 10, x: -5, y: -5)
            .shadow(color: Color.lairShadowGray.opacity(0.5), radius: 10, x: 5, y: 5)
        }
        return button
    }
    
    private var buttonDown: some View {
        ZStack {
            Rectangle()
                .foregroundColor(.lairBackgroundGray)
                .frame(width: size * 2.25, height: size * 2.25)
                .cornerRadius(size * 8 / 16)
            
            Rectangle()
                .foregroundColor(.lairBackgroundGray)
                .frame(width: size * 2.25, height: size * 2.25)
                .cornerRadius(size * 8 / 16)
                .inverseMask(Rectangle()
                    .cornerRadius(size * 6 / 16)
                    .padding(size / 8)
                )
                .shadow(
                    color: Color.lairShadowGray.opacity(0.7),
                    radius: size * 0.1875,
                    x: size * 0.1875, y: size * 0.1875)
                .shadow(
                    color: Color(white: 1.0).opacity(0.9),
                    radius: size * 0.1875,
                    x: -size * 0.1875, y: -size * 0.1875)
                .clipShape(RoundedRectangle(cornerRadius: size * 8 / 16))
            
            LinearGradient.lairHorizontalDarkReverse
                .frame(width: size, height: size)
                .mask(Image(systemName: self.icon)
                    .resizable()
                    .scaledToFit()
                )
                .shadow(
                    color: Color.lairShadowGray.opacity(0.5),
                    radius: size * 0.1875,
                    x: size * 0.1875, y: size * 0.1875)
                .shadow(
                    color: Color(white: 1.0).opacity(0.9),
                    radius: size * 0.1875,
                    x: -size * 0.1875, y: -size * 0.1875)
        }
        .overlay(
            RoundedRectangle(cornerRadius: size * 8 / 16)
                .stroke(LinearGradient.lairDiagonalLightBorder, lineWidth: 2)
        )
    }
}

struct TabBarItem_Previews: PreviewProvider {
    static var previews: some View {
        TabBarItem(
            selectedItem: .constant(SelectedItem.lair),
            smartView: .lair, icon: "pencil.tip")
    }
}
