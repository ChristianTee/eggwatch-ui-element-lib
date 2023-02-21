//
//  View.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

extension View {
    
    // MARK: Public
    
    @ViewBuilder public func isHidden(_ isHidden: Bool) -> some View {
        if isHidden {
            
            self.hidden()
        } else {
            self
        }
    }
    
    public func style(from lib: StyleLibrary, isHighlighted: Bool = false, isEnabled: Bool, isLoading: Bool = false) -> some View {
        
        let backgroundColor = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).backgroundColor
        let foregroundColor = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).foregroundColor
//        let borderColor = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).borderColor
        let cornerRadius = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).cornerRadius
//        let borderWidth = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).borderWidth
        let height = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).height
        
        return self.foregroundColor(foregroundColor)
                   .background(LinearGradient(gradient: Gradient(colors: backgroundColor), startPoint: .init(x: 0, y: 0.5), endPoint: .init(x: 1, y: 0.5)))
                   .cornerRadius(cornerRadius, antialiased: true)
//                   .overlay(
//                        RoundedRectangle(cornerRadius: cornerRadius)
//                            .stroke(borderColor, lineWidth: borderWidth)
//                   )
//                   .clipShape(RoundedRectangle(cornerRadius: 24, style: .continuous))
                   .clipShape(Capsule())
                   .frame(height: height.rawValue)
    }
}

