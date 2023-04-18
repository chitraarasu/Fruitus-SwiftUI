//
//  SettingsLableView.swift
//  Fruitus
//
//  Created by kirshi on 4/17/23.
//

import SwiftUI

struct SettingsLableView: View {
    
    var labelText:String
    var labelImage:String
    
    var body: some View {
        HStack {
           Text(labelText.uppercased()).fontWeight(.bold)
           Spacer()
           Image(systemName: labelImage)
       }
    }
}

struct SettingsLableView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLableView(labelText: "Fruitus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
