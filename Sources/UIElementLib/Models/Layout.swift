//
//  File.swift
//  
//
//  Created by Christian Trümper on 20.02.23.
//

import SwiftUI

public class Layout {
    
    // MARK: Grid
    
    public enum Grid: CGFloat {
        
        case grid2 = 2.0
        case grid4 = 4.0
        case grid8 = 8.0
        case grid12 = 12.0
    }
    
    // MARK: Spacing

    public enum Spacing: CGFloat {
        
        case spacing2 = 2.0
        case spacing4 = 4.0
        case spacing8 = 8.0
        case spacing16 = 16.0
        case spacing20 = 20.0
    }
    
    // MARK: Radius

    public enum Radius: CGFloat {
        
        case radius1 = 4.0
        case radius2 = 8.0
        case radius3 = 12.0
        case radius4 = 16.0
        case radius5 = 20.0
        case radius6 = 24.0
    }
    
    // MARK: Border width

    public enum BorderWidth: CGFloat {
        
        case width1 = 1.0
        case width2 = 2.0
    }
    
    // MARK: Border width

    public enum Height: CGFloat {
        
        case height50 = 50.0
    }
}


