//
//  ButtonView.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public struct ButtonView: View {
    
    // MARK: Properties
    
    @Environment(\.isEnabled) var isEnabled
    
    var title: String?
    var image: Image?
    var style: StyleLibrary
    var textAlignment: ElementStyle.TextAlignment?
    var renderMode: Image.TemplateRenderingMode = .template
    var dynamicWidth: Bool = false
    var isLoading: Bool = false
    var loadingStyle: ButtonLoadingStyle = .none
    
    var action: () -> Void
    
    // MARK: Init
    
    public init(title: String? = nil, image: Image? = nil, style: StyleLibrary, textAlignment: ElementStyle.TextAlignment? = nil, renderMode: Image.TemplateRenderingMode? = .template, dynamicWidth: Bool = false, isLoading: Bool = false, loadingStyle: ButtonLoadingStyle = .none, action: @escaping(() -> Void))
    {
        self.title = title
        self.image = image
        self.style = style
        self.textAlignment = textAlignment
        self.renderMode = renderMode ?? .template
        self.dynamicWidth = dynamicWidth
        self.isLoading = isLoading
        self.loadingStyle = loadingStyle
        self.action = action
    }
    
    // MARK: Body
    
    public var body: some View {
        
        let buttonViewStyle = ButtonViewStyle(title: title,
                                              image: image,
                                              style: style,
                                              textAlignment: textAlignment,
                                              renderMode: renderMode,
                                              dynamicWidth: dynamicWidth,
                                              isLoading: isLoading,
                                              loadingStyle: loadingStyle,
                                              isEnabled: isEnabled)
        
        Button("", action: action)
            .buttonStyle(buttonViewStyle)
    }
}

// MARK: ButtonStyle extension

extension ButtonView {
    
    private struct ButtonViewStyle: SwiftUI.ButtonStyle {

        var title: String?
        var image: Image?
        var style: StyleLibrary
        @State var textAlignment: ElementStyle.TextAlignment?
        var renderMode: Image.TemplateRenderingMode
        var dynamicWidth: Bool
        var isLoading: Bool
        var loadingStyle: ButtonLoadingStyle
        var isEnabled: Bool
        
        func makeBody(configuration: SwiftUI.ButtonStyle.Configuration) -> some View {
            
            let isHighlighted = configuration.isPressed

            return ZStack {
            
                HStack(spacing: Layout.Spacing.spacing16.rawValue) {
                    
                    if self.isLoading {
                        
                        IconView(image: Image(systemName: "arrow.triangle.2.circlepath.circle.fill"),
                                 style: self.style, renderMode: self.renderMode, isHighlighted: isHighlighted, isLoading: self.isLoading)
                            .environment(\.isEnabled, self.isEnabled)
                        
                        if self.loadingStyle == .title, let _title = self.title {
                            
                            TextView(text: _title, style: self.style, isHighlighted: isHighlighted, dynamicWidth: false, hasLineLimit: true)
                                .environment(\.isEnabled, self.isEnabled)
                        }
                        
                    } else {
                        
                        if let image {
                            
                            IconView(image: image, style: self.style, renderMode: self.renderMode, isHighlighted: isHighlighted, isLoading: self.isLoading)
                                .environment(\.isEnabled, self.isEnabled)
                        }
                        
                        if let title {
                            
                            TextView(text: title, style: self.style, isHighlighted: isHighlighted, dynamicWidth: false, hasLineLimit: true)
                                .environment(\.isEnabled, self.isEnabled)
                        }
                    }
                }
                .style(from: self.style, isHighlighted: isHighlighted, isEnabled: self.isEnabled, dynamicWidth: self.dynamicWidth, textAlignment: self.textAlignment, isLoading: self.isLoading, loadingStyle: self.loadingStyle)
            }
            .style(from: self.style, isHighlighted: isHighlighted, isEnabled: self.isEnabled, isLoading: self.isLoading)
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(title: "Button", style: Styles.primaryStyle, dynamicWidth: true) {
            
        }
        .environment(\.isEnabled, false)
    }
}
