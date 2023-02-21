//
//  ElementState.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public class ElementState {
    
    public enum States: String {
        case `default`
        case highlighted
        case disabled
        case loading
    }
    
    public var state: States? = .default
    public var style: ElementStyle?
    
    public init(_ state: States, style: ElementStyle) {
        
        self.state = state
        self.style = style
    }
}
