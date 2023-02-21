//
//  File.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public extension Font.TextStyle {
    
    var size: CGFloat {
        switch self {
        case .largeTitle: return 60
        case .title: return 48
        case .title2: return 34
        case .title3: return 24
        case .headline: return 20
        case .subheadline, .callout, .body: return 16
        case .footnote: return 14
        case .caption, .caption2: return 12
        @unknown default:
            return 8
        }
    }
}
