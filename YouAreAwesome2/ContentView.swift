//
//  ContentView.swift
//  YouAreAwesome2
//
//  Created by Gabriella Piacentino on 1/20/23.
//

import SwiftUI
//modifier order matters
//resizable modifier returns an IMAGE view (add these, and specfic modifers FIRST)
//foregroundcolor modifer returns ANY TYPE of view
//VStack is needed to unify views into single view - if not, they are considered separate
//it is a single parent view under the body
//cannot change a variable inside a view, unless u add @state code
struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!" //preserves state of variable even if new data is detected
    var body: some View {
        VStack { //no space between vstack and hstack
//            Image(systemName: "swift")
//                .resizable()
//                .scaledToFit()
//                .foregroundColor(.orange)
//                .padding()
//            .padding(.trailing, 30.0)
//              .padding(.bottom, 100)
//              .background(.blue)
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5) //when there are too many words to fit in space. dont scale more than this
                .multilineTextAlignment(.center)//fix alignment for multiple lines of text
                .foregroundColor(.red)
                .frame(height: 150) //fixed height
                .frame(maxWidth: .infinity) //flexible width
                .padding()
                .border(.orange, width: 1) //drawing borders are good debugging tool
                
            //   .italic()
            //  .background(.yellow)
            
            HStack{
                //button
                Button("Awesome!") {
                    //This is the action performed when the button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great!") {
                    //This is the action performed when the button is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
            .border(.purple, width: 1)
        }
     }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
