//
//  ElementStyle.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public class ElementStyle {

    // MARK: Types
    
    public enum TextAlignment: String {
        case start = "start"
        case center = "center"
        case end = "end"
    }
    
    // MARK: Properties
    
    fileprivate(set) public var textAlignment: TextAlignment? = .start
    fileprivate(set) public var maxTextLines: Int = Fallback.defaultMaxLines
    fileprivate(set) public var fontSize: Font.TextStyle = .title
    fileprivate(set) public var fontWeight: Font.Weight = .regular
    fileprivate(set) public var titleEdgeInsets: EdgeInsets = Fallback.defaultEdgeInsets
    fileprivate(set) public var letterSpacing: CGFloat = Fallback.defaultLetterSpacing
    fileprivate(set) public var height: Layout.Height = .height50
    fileprivate(set) public var backgroundColor: [Color] = [Fallback.defaultColor]
    fileprivate(set) public var foregroundColor: Color? = Fallback.defaultColor
    fileprivate(set) public var borderColor: Color = Fallback.defaultColor
    fileprivate(set) public var cornerRadius: CGFloat = Fallback.defaultCornerRadius
    fileprivate(set) public var borderWidth: CGFloat = Fallback.defaultBorderWidth
    
    public var font: Font {
        
        get {
            
            return Font.system(size: self.fontSize.size, weight: self.fontWeight)
        }
    }

    // MARK: Init
    
    public init() {}
    
    public init(fontSize: Font.TextStyle = .title,
                fontWeight: Font.Weight = .regular,
                height: Layout.Height = .height50,
                letterSpacing: CGFloat = Fallback.defaultLetterSpacing,
                textAlignment: TextAlignment? = nil,
                maxTextLines: Int =  Fallback.defaultMaxLines,
                titleEdgeInsets: EdgeInsets = Fallback.defaultEdgeInsets,
                foregroundColor: Color? = nil,
                backgroundColor: [Color] = [Fallback.defaultColor],
                borderColor: Color = Fallback.defaultColor,
                cornerRadius: CGFloat = Fallback.defaultCornerRadius,
                borderWidth: CGFloat = Fallback.defaultBorderWidth) {
        
        self.fontSize = fontSize
        self.fontWeight = fontWeight
        
        self.letterSpacing = letterSpacing
        self.height = height
        
        self.textAlignment = textAlignment
        self.maxTextLines = maxTextLines
        self.titleEdgeInsets = titleEdgeInsets
        
        self.backgroundColor = backgroundColor
        self.foregroundColor = foregroundColor
        self.borderColor = borderColor
        
        self.cornerRadius = cornerRadius
        self.borderWidth = borderWidth
    }
    
    // MARK: Helper
    
    public static func textAlignment(from textAlignment: TextAlignment) -> SwiftUI.TextAlignment {
        let retVal: SwiftUI.TextAlignment
        
        switch textAlignment {
            case .start:
                retVal = .leading
            
            case .center:
                retVal = .center
            
            case .end:
                retVal = .trailing
        }
        
        return retVal
    }
    
    public static func alignment(from textAlignment: TextAlignment) -> SwiftUI.Alignment {
        let retVal: SwiftUI.Alignment
        
        switch textAlignment {
            case .start:
                retVal = .leading
            
            case .center:
                retVal = .center
            
            case .end:
                retVal = .trailing
        }
        
        return retVal
    }
    
    // MARK: Combine
    
    public func combine(fontSize: Font.TextStyle? = nil,
                        fontWeight: Font.Weight? = nil,
                        height: Layout.Height? = nil,
                        letterSpacing: CGFloat? = nil,
                        textAlignment: TextAlignment? = nil,
                        maxTextLines: Int? = nil,
                        titleEdgeInsets: EdgeInsets? = nil,
                        backgroundColor: [Color]? = nil,
                        foregroundColor: Color? = nil,
                        borderColor: Color? = nil,
                        cornerRadius: CGFloat? = nil,
                        borderWidth: CGFloat? = nil) -> ElementStyle {
    
        let retVal = ElementStyle(fontSize: fontSize ?? self.fontSize,
                                  fontWeight: fontWeight ?? self.fontWeight,
                                  height: height ?? self.height,
                                  letterSpacing: letterSpacing ?? self.letterSpacing,
                                  textAlignment: textAlignment ?? self.textAlignment,
                                  maxTextLines: maxTextLines ?? self.maxTextLines,
                                  titleEdgeInsets: titleEdgeInsets ?? self.titleEdgeInsets,
                                  foregroundColor: foregroundColor ?? self.foregroundColor,
                                  backgroundColor: backgroundColor ?? self.backgroundColor,
                                  borderColor: borderColor ?? self.borderColor,
                                  cornerRadius: cornerRadius ?? self.cornerRadius,
                                  borderWidth: borderWidth ?? self.borderWidth)
        
        return retVal
    }
}
