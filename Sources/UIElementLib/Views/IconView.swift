//
//  IconView.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public struct IconView: View {
    
    // MARK: Properties
    
    @Environment(\.isEnabled) public var isEnabled
    
    var image: Image
    var style: StyleLibrary
    var renderMode: Image.TemplateRenderingMode = .template
    var isBackgroundColorRequired = true
    var isHighlighted: Bool = false
    var isLoading: Bool = false
    
    @State private var isAnimated = false
    
    // MARK: Init
    
    public init(image: Image, style: StyleLibrary, renderMode: Image.TemplateRenderingMode? = .template, isHighlighted: Bool = false, isLoading: Bool = false)
    {
        self.image = image
        self.style = style
        self.renderMode = renderMode ?? .template
        self.isHighlighted = isHighlighted
        self.isLoading = isLoading
    }
    
    // MARK: Body
    
    public var body: some View {
        
        self.image
            .renderingMode(self.renderMode)
            .style(from: self.style, isHighlighted: self.isHighlighted, isEnabled: self.isEnabled, isLoading: self.isAnimated)
            .rotationEffect(Angle(degrees: self.isAnimated ? 360 : 0))
            .animation(.linear(duration: 1).repeatForever(autoreverses: false), value: self.isAnimated)
            .onAppear {
                
                DispatchQueue.main.async {
                    
                    self.isAnimated = self.isLoading
                }
            }
            .onDisappear {
                
                self.isAnimated = false
            }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        IconView(image: Image(systemName: "arrow.counterclockwise.circle.fill"), style: Styles.defaultStyle)
    }
}
