/*
 See the License.txt file for this sample’s licensing information.
 */

import SwiftUI

struct HalfCard: View {
    var body: some View {
        VStack {
//            Spacer()
            Image(systemName: "crown.fill")
                .font(.system(size: 180))
        }.frame(maxWidth: /*@START_MENU_TOKEN@*/ .infinity/*@END_MENU_TOKEN@*/, maxHeight: .infinity, alignment: .top)
            .border(Color.pink)
            // #-learning-code-snippet(6.debugFrameCorrection)
            .overlay(alignment: .topLeading) {
                VStack {
                    Image(systemName: "crown.fill")
                        .font(.body)
                    Text("Q")
                        .font(.largeTitle)
                    Image(systemName: "heart.fill")
                        .font(.title)
                }
                .padding()
            }
            .border(Color.blue)
            .border(Color.green)
        // #-learning-code-snippet(6.debugFrameQuestion)
        // #-learning-code-snippet(6.debugFrame)
        // #-learning-code-snippet(6.debugBorder)
    }
}

struct DebuggingView: View {
    var body: some View {
        VStack {
            HalfCard()
            HalfCard()
                .rotationEffect(.degrees(180))
        }
        .background(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.black)
        )
        .aspectRatio(0.70, contentMode: .fit)
        .foregroundColor(.red)
        .padding()
    }
}

struct DebuggingView_Previews: PreviewProvider {
    static var previews: some View {
        DebuggingView()
    }
}
