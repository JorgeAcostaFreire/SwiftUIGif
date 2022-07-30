//
//  ContentView.swift
//  GifImage
//
//  Created by Jorge Acosta Freire on 30/7/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GifView("goose")
            .frame(width: UIScreen.main.bounds.width/2, height: UIScreen.main.bounds.width/2)
            .clipShape(Circle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
