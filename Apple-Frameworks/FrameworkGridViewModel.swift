//
//  FrameworkGridViewModel.swift
//  Apple-Frameworks
//
//  Created by AT5HK on 12/31/23.
//

import Foundation
import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework? {
        didSet {
            isShowingDetailView = true
        }
    }
    
    
    @Published var isShowingDetailView = false
    
}
