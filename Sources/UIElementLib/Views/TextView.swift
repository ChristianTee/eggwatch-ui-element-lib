//
//  TextView.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public struct TextView: View {
    
    // MARK: Properties
    
    @Environment(\.isEnabled) public var isEnabled
    
    var text: String
    var style: StyleLibrary
    var textAlignment: ElementStyle.TextAlignment?
    var isHighlighted: Bool = false
    var dynamicWidth: Bool = false
    var hasLineLimit: Bool = false
    
    // MARK: Init
    
    public init(text: String, style: StyleLibrary, textAlignment: ElementStyle.TextAlignment? = nil, isHighlighted: Bool = false, dynamicWidth: Bool = false, hasLineLimit: Bool = false) {
        
        self.text = text
        self.style = style
        self.textAlignment = textAlignment
        self.isHighlighted = isHighlighted
        self.dynamicWidth = dynamicWidth
        self.hasLineLimit = hasLineLimit
    }
    
    // MARK: Body
    
    public var body: some View {
        
        Text(self.text)
            .style(from: self.style, isHighlighted: self.isHighlighted, isEnabled: self.isEnabled, dynamicWidth: self.dynamicWidth, hasLineLimit: self.hasLineLimit, textAlignment: self.textAlignment)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView(text: "Lorem ipsum", style: Styles.headerStart, dynamicWidth: true, hasLineLimit: true)
    }
}
