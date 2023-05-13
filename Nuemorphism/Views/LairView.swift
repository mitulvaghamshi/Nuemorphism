import SwiftUI

struct LairView: View {
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes =
        [.foregroundColor: UIColor.lairDarkGray]
    }
    
    var profileView: some View {
        LinearGradient.lairHorizontalDark
            .frame(width: 24, height: 24)
            .mask(Image(systemName: "person.crop.circle"))
            .padding()
    }
    
    var body: some View {
        NavigationView {
            ZStack {
                Color.lairBackgroundGray.edgesIgnoringSafeArea(.all)
                VStack(spacing: 20) {
                    AccessoryView(items: Data.accessories)
                    ProgressBar(percent: .constant(0.42), title: "Death Ray Charge").frame(height: 50)
                    ProgressBar(percent: .constant(0.86), title: "Weather Machine Construction")
                        .frame(height: 50)
                }
                .navigationBarTitle(Text("Nuemorphism"))
                .navigationBarItems(trailing: profileView)
            }
        }
    }
}

struct LairView_Previews: PreviewProvider {
    static var previews: some View {
        LairView()
    }
}
