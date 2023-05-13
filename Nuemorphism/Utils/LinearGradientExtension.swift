import SwiftUI

extension LinearGradient {
    public static var lairDiagonalDarkBorder: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.white, .lairGray]),
            startPoint: UnitPoint(x: -0.2, y: 0.5),
            endPoint: .bottomTrailing
        )
    }
    
    public static var lairDiagonalLightBorder: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.white, .lairLightGray]),
            startPoint: UnitPoint(x: 0.2, y: 0.2),
            endPoint: .bottomTrailing
        )
    }
    
    public static var lairHorizontalDark: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.lairShadowGray, .lairDarkGray]),
            startPoint: .leading,
            endPoint: .trailing
        )
    }
    
    public static var lairHorizontalDarkReverse: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.lairDarkGray, .lairShadowGray]),
            startPoint: .leading,
            endPoint: .trailing
        )
    }
    
    public static var lairHorizontalDarkToLight: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [
                .lairShadowGray,
                Color.white.opacity(0.0),
                .white]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
    
    public static var lairVerticalLightToDark: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [
                .white,
                Color.white.opacity(0.0),
                .lairShadowGray]),
            startPoint: .top,
            endPoint: .bottom
        )
    }
    
    public static var lairHorizontalLight: LinearGradient {
        LinearGradient(
            gradient: Gradient(colors: [.lairWhite, .lairBackgroundGray]),
            startPoint: .leading,
            endPoint: .trailing
        )
    }
}
