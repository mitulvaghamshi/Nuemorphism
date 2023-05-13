import SwiftUI

struct AccessoryItem: View, Identifiable {
    let id = UUID()
    var title: String
    var image: Image
    
    var body: some View {
        VStack {
            LinearGradient.lairHorizontalDark
                .mask(image.resizable().scaledToFit())
                .frame(width: 150, height: 180)
                .padding(30)
                .font(.system(size: 150, weight: .thin))
                .shadow(color: .white, radius: 2, x: -3, y: -3)
                .shadow(color: .lairShadowGray, radius: 2, x: 3, y: 3)
            HStack {
                Text(title)
                    .foregroundColor(.lairDarkGray)
                    .bold()
                    .padding(.leading)
                    .padding(.bottom)
                Spacer()
            }
        }
        .frame(width: 230)
        .background(Color.lairBackgroundGray)
        .cornerRadius(15)
        .shadow(color: Color(white: 1.0).opacity(0.9), radius: 18, x: -18, y: -18)
        .shadow(color: Color.lairShadowGray.opacity(0.5), radius: 14, x: 14, y: 14)
    }
}

struct AccessoryItem_Previews: PreviewProvider {
    static var previews: some View {
        AccessoryItem(title: "Control Room", image: Image(systemName: "lock.shield"))
    }
}
