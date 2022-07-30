//
//  GifView.swift
//  GifImage
//
//  Created by Jorge Acosta Freire on 30/7/22.
//

import SwiftUI
import WebKit

struct GifView: UIViewRepresentable {
    private let name : String
    
    init(_ name : String) {
        self.name = name
    }
    
    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        guard let url = Bundle.main.url(forResource: name, withExtension: "gif") else {return webView}
        let data = try! Data(contentsOf: url)
        
        webView.load(data, mimeType: "image/gif", characterEncodingName: "UTF-8", baseURL: url.deletingLastPathComponent())
        
        return webView
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.reload()
    }
}

struct GifView_Previews: PreviewProvider {
    static var previews: some View {
        GifView("derp2")
    }
}
