//
//  Styles.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public class Styles {
    
    // MARK: Button
    
    // Primary
    
    public static var primaryStyle: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.primaryDefault), ElementState(.highlighted, style: Styles.primaryHighlighted), ElementState(.loading, style: Styles.primaryLoading), ElementState(.disabled, style: Styles.primaryDisabled)])
    }
    
    public static var primaryDefault: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, height: .height50, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .white, backgroundColor: [.dotterSoft, .dotterHard], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var primaryHighlighted: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, height: .height50, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .white, backgroundColor: [.dotterSoft, .dotterHard], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var primaryLoading: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, height: .height50, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .white, backgroundColor: [.dotterSoft, .dotterHard], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var primaryDisabled: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, height: .height50, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .primary, backgroundColor: [.second], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    
    // Secondary
    
    public static var secondaryStyle: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.secondaryDefault), ElementState(.highlighted, style: Styles.secondaryHighlighted), ElementState(.loading, style: Styles.secondaryLoading), ElementState(.disabled, style: Styles.secondaryDisabled)])
    }
    
    public static var secondaryDefault: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .primary, backgroundColor: [.second], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var secondaryHighlighted: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .primary, backgroundColor: [.second], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var secondaryLoading: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .primary, backgroundColor: [.second], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var secondaryDisabled: ElementStyle {
        
        return ElementStyle(fontSize: .headline, fontWeight: .semibold, textAlignment: .center, titleEdgeInsets: EdgeInsets.edgeInsets1, foregroundColor: .primary, backgroundColor: [.second], cornerRadius: Layout.Radius.radius6.rawValue)
    }
    
    public static var defaultStyle: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.secondaryDefault)])
    }
    
    // MARK: Text styles
    
    public static var headerStart: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.headerStartDefault)])
    }
    
    public static var headerCenter: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.headerCenterDefault)])
    }
    
    public static var headerEnd: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.headerEndDefault)])
    }
    
    public static var headerStartDefault: ElementStyle {
        return ElementStyle(fontSize: .title2, fontWeight: .semibold, textAlignment: .start, foregroundColor: .primary)
    }
    
    public static var headerCenterDefault: ElementStyle {
        return ElementStyle(fontSize: .title2, fontWeight: .semibold, textAlignment: .center, foregroundColor: .primary)
    }
    
    public static var headerEndDefault: ElementStyle {
        return ElementStyle(fontSize: .title2, fontWeight: .semibold, textAlignment: .end, foregroundColor: .primary)
    }
    
    public static var title3Start: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.title3StartDefault)])
    }
    
    public static var titleSemiBoldStart: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.titleStartSemiBold)])
    }
    
    public static var title3SemiBoldStart: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.title3StartSemiBold)])
    }
    
    public static var titleStartSemiBold: ElementStyle {
        return ElementStyle(fontSize: .title, fontWeight: .semibold, textAlignment: .start, foregroundColor: .primary)
    }
    
    public static var title3StartDefault: ElementStyle {
        return ElementStyle(fontSize: .title3, fontWeight: .regular, textAlignment: .start, foregroundColor: .primary)
    }
    
    public static var title3StartSemiBold: ElementStyle {
        return ElementStyle(fontSize: .title3, fontWeight: .semibold, textAlignment: .start, foregroundColor: .primary)
    }
    
    public static var bodyStart: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.bodyStartDefault)])
    }
    
    public static var bodyPrimaryStart: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.bodyStartPrimary)])
    }
    
    public static var bodySecondaryStart: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.bodyStartSecondary)])
    }
    
    public static var bodyCenter: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.bodyCenterDefault)])
    }
    
    public static var bodyEnd: StyleLibrary {
        return StyleLibrary(states: [ElementState(.default, style: Styles.bodyEndDefault)])
    }
    
    public static var bodyStartDefault: ElementStyle {
        return ElementStyle(fontSize: .body, fontWeight: .regular, textAlignment: .start, foregroundColor: .primary)
    }
    
    public static var bodyStartPrimary: ElementStyle {
        return ElementStyle(fontSize: .body, fontWeight: .semibold, textAlignment: .start, foregroundColor: .primary)
    }
    
    public static var bodyStartSecondary: ElementStyle {
        return ElementStyle(fontSize: .body, fontWeight: .regular, textAlignment: .start, foregroundColor: .text)
    }
    
    public static var bodyCenterDefault: ElementStyle {
        return ElementStyle(fontSize: .body, fontWeight: .regular, textAlignment: .center, foregroundColor: .primary)
    }
    
    public static var bodyEndDefault: ElementStyle {
        return ElementStyle(fontSize: .body, fontWeight: .regular, textAlignment: .end, foregroundColor: .primary)
    }
    
}

