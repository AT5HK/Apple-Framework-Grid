//
//  AFButton.swift
//  Apple-Frameworks
//
//  Created by AT5HK on 12/31/23.
//

import SwiftUI

struct AFButton: View {
    
    var title: String
    
    var body: some View {
       
        Text(title)
            .frame(width: 280, height: 50)
            .background(.red)
            .foregroundColor(.white)
            .cornerRadius(8.0)
    }
}

struct AFButton_Previews: PreviewProvider {
    static var previews: some View {
        AFButton(title: "Test Title")
    }
}
