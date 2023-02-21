//
//  StyleLibrary.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public class StyleLibrary {
    
    public var states: [ElementState]?
    
    // MARK: Init
    
    public init(states: [ElementState]?) {
        
        self.states = states
    }
    
    // MARK: Public
    
    public func style(isHighlighted: Bool = false, isEnabled: Bool, isLoading: Bool = false) -> ElementStyle {
        
        var retVal: ElementStyle?
        
        if isLoading && isEnabled
        {
           retVal = self.style(from: .loading)
        } else if isHighlighted {
            retVal = self.style(from: .highlighted)
        } else if !isEnabled {
            retVal = self.style(from: .disabled)
        } else {
            retVal = self.style(from: .default)
        }
        
        return retVal ?? self.style(from: .default) ?? Fallback.defaultStyle
    }
    
    // MARK: Private
    
    private func style(from state: ElementState.States) -> ElementStyle? {
        
        return self.states?.first(where: { $0.state == state })?.style
    }
}
