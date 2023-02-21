//
//  Image.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

extension Image {
    
    public func style(from lib: StyleLibrary, isHighlighted: Bool = false, isEnabled: Bool, isLoading: Bool = false) -> some View {
        
        let backgroundColor = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).backgroundColor
        let foregroundColor = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).foregroundColor
        
        return self.background(backgroundColor.first)
                   .foregroundColor(foregroundColor)
              
    }
}
