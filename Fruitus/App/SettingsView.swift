//
//  SettingsView.swift
//  Fruitus
//
//  Created by kirshi on 4/17/23.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.presentationMode) var presentationModel
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    GroupBox(label: HStack {
                        SettingsLableView(labelText: "Fruitus", labelImage: "info.circle")
                    }) {
                        Divider().padding(.vertical,4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(8)
                            
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    GroupBox(label: HStack {
                        SettingsLableView(labelText: "Customization", labelImage: "paintbrush")
                    }) {
                        Divider().padding(.vertical,4)
                        
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            if (isOnboarding){
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground).clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    GroupBox(label: HStack {
                        SettingsLableView(labelText: "Application", labelImage: "apps.iphone")
                    }) {
            
                        SettingsRowView(name: "Developer", content: "Chitraarasu")
                        SettingsRowView(name: "Designer", content: "Chitraarasu")
                        SettingsRowView(name: "Website", linkLabel: "Chitraarasu Portfolio", linkDestination: "chitraarasu-portfolio.onrender.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@chitraarasu", linkDestination: "twitter.com/chitraarasu")
                        SettingsRowView(name: "SwiftUI", content: "4.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing: Button(action: {
                    presentationModel.wrappedValue.dismiss()
                }, label: {
                    Image(systemName: "xmark")
                }))
                .navigationViewStyle(StackNavigationViewStyle())
            }
        }
        .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
