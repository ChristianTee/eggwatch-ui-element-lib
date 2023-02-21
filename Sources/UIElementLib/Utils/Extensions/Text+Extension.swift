//
//  File.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

extension Text {
    
    public func style(from lib: StyleLibrary, isHighlighted: Bool = false, isEnabled: Bool, dynamicWidth: Bool, hasLineLimit: Bool, textAlignment: ElementStyle.TextAlignment? = nil) -> some View {
        
        let foregroundColor = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled).foregroundColor
        let font = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled).font
        let defaultTextAligment = textAlignment ?? (lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled).textAlignment ?? .start)
        let multilineTextAlignment = ElementStyle.textAlignment(from: defaultTextAligment)
        let alignment = ElementStyle.alignment(from: defaultTextAligment)
        let letterSpacing = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled).letterSpacing
        let maxLines = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled).maxTextLines
        
        return self.tracking(letterSpacing)
                   .foregroundColor(foregroundColor)
                   .font(font)
                   .multilineTextAlignment(multilineTextAlignment)
                   .lineLimit(maxLines > 0 ? maxLines : nil)
                   .frame(minWidth: 0, maxWidth: dynamicWidth ? .infinity : nil, alignment: alignment)
    }
}

