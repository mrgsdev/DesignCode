//
//  FlipView.swift
//  DesignCodeUniversal
//
//  Created by Meng To on 7/7/20.
//

import SwiftUI

struct FlipView: View {
    var item1: Course = courses[0]
    var item2: Course = courses[1]
    @State var show = false
    @State var viewState = CGSize.zero
    @State var appear = false
    var color1: Color = Color(#colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))
    var color2: Color = Color(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
    
    var body: some View {
        ZStack {
            CertificateItem(item: item1, color1: color1, color2: color2, show: $show)
                .opacity(0.9)
                .rotation3DEffect(
                    Angle(degrees: show ? 90 : 0),
                    axis: (x: 0.0, y: 1.0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 0.3
                )
                .animation(
                    show ? .easeIn(duration: 0.3) : Animation.easeOut(duration: 0.3).delay(0.3)
                )
            CertificateItem(item: item2, color1: Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)), color2: Color(#colorLiteral(red: 0.9607843161, green: 0.7058823705, blue: 0.200000003, alpha: 1)), show: $show)
                .rotation3DEffect(
                    Angle(degrees: show ? 0 : -90),
                    axis: (x: 0.0, y: 1.0, z: 0.0),
                    anchor: .center,
                    anchorZ: 0.0,
                    perspective: 0.3
                )
                .animation(
                    show ? .easeOut(duration: 0.3).delay(0.3) : .easeIn(duration: 0.3)
                )
        }
        .frame(maxWidth: 350)
        .rotation3DEffect(
            Angle(degrees: appear ? 0 : 20),
            axis: (x: appear ? 0 : 1, y: appear ? 1 : 0, z: 0),
            anchor: .center,
            anchorZ: 0.0,
            perspective: 0.2
        )
        .animation(.easeInOut(duration: 0.8))
        .onAppear {
            appear = true
        }
    }
}

struct CertificatesView_Previews: PreviewProvider {
    static var previews: some View {
        FlipView()
    }
}
