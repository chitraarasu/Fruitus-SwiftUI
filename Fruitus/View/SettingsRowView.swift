//
//  SettingsRowView.swift
//  Fruitus
//
//  Created by kirshi on 4/18/23.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            
            HStack(alignment: .center, spacing: 10) {
                Text(name).foregroundColor(.gray)
                
                Spacer()
                
                if(content != nil){
                    Text(content!)
                } else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination ?? "")")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Chitraarasu")
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()

            SettingsRowView(name: "Website", linkLabel: "Chitraarasu Portfolio", linkDestination: "chitraarasu-portfolio.onrender.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        }
    }
}
