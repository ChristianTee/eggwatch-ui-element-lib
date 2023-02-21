//
//  File.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

extension HStack {

    public func style(from lib: StyleLibrary, isHighlighted: Bool = false, isEnabled: Bool, dynamicWidth: Bool, textAlignment: ElementStyle.TextAlignment? = nil, isLoading: Bool = false, loadingStyle: ButtonLoadingStyle = .none) -> some View {
        
        let defaultTextAligment = textAlignment ?? (lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled).textAlignment ?? .start)
        let alignment = ElementStyle.alignment(from: defaultTextAligment)
        let titleEdgeInsets = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).titleEdgeInsets
        let height = lib.style(isHighlighted: isHighlighted, isEnabled: isEnabled, isLoading: isLoading).height
       
        return self.padding(titleEdgeInsets)
                   .frame(minWidth: 0, maxWidth: dynamicWidth ? .infinity : isLoading ? loadingStyle == .title ? .infinity : height.rawValue : nil, alignment: alignment)
                   .frame(height: height.rawValue)
    }
}

